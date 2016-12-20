/**
 * Created by Samuel on 16-12-19.
 */

$(document).ready(function () {
    $('.loading').hide();
    var isBottom = false;
    var folder = $('#photo-gallery').attr("folder");

    var $grid = window.msnry;
    var page = 0;
    var finish = false;
    if (page == 0) loadImage();
    // Each time the user scroll
    $(window).scroll(function () {
        if (finish) return;

        var $footerOffsetTop = $('[data-footer]').offset().top;
        var $this = $(this);

        if ($this.scrollTop() + $this.height() > $footerOffsetTop) {
            $('.loading').show();
            if (true === isBottom) return;
            isBottom = true;
            loadImage();
        }
    });
    $.ajax({
        method: "POST",
        url: Routing.generate('ajax_count_picture'),
        dataType: 'json'
    })
        .done(function (data) {
            $("#mairie").append(' (' + data.mairie + ')');
            $("#espagne").append(' (' + data.espagne + ')');
            $("#jp").append(' (' + data.jp + ')');
            $("#gala").append(' (' + data.gala + ')');
        });
    function loadImage() {
        setTimeout(function () {
            $.ajax({
                method: "POST",
                url: Routing.generate('ajax_load_picture'),
                dataType: 'html',
                data: {page: page, folder: folder}
            })
                .done(function (data) {
                    $('.loading').hide();
                    var $data = $(data);
                    isBottom = false;
                    ++page;
                    $grid.append($data).masonry('appended', $data);
                    $grid.imagesLoaded(function () {
                        $grid.masonry('reloadItems');
                        $grid.masonry('layout');
                        $('.gallery-popup').magnificPopup({
                            type: 'image',
                            closeBtnInside: true,
                            removalDelay: 300,
                            gallery: {
                                enabled: true, // set to true to enable gallery
                                preload: [0, 2], // read about this option in next Lazy-loading section
                                navigateByImgClick: true,
                                arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', // markup of an arrow button
                                closeMarkup: '<button title="%title%" class="mfp-close"><i class="mfp-close-icn">&times;</i></button>',
                                tPrev: 'Previous (Left arrow key)', // title for left button
                                tNext: 'Next (Right arrow key)', // title for right button
                            }
                        });

                    });

                    if (0 === $data.length) {
                        finish = true;
                    }
                })
                .fail(function () {
                    isBottom = false;
                    $('.loading').hide();
                    console.log('fail');
                });
        }, 2000);
    }
});
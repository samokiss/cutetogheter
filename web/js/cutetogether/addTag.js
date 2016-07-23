/**
 * Created by Samuel on 16-07-05.
 */
$(document).ready(function () {
    var $container = $('div#blog_tags');
    var index = $container.find(':input').length;

    $('#add_tag').click(function (e) {
        addPicture($container);

        e.preventDefault(); // évite qu'un # apparaisse dans l'URL
        return false;
    });

    if (index == 0) {
        addPicture($container);
    } else {
        $container.children('div').each(function () {
            addDeleteLink($(this));
        });
    }

    function addPicture($container) {
        var template = $container.attr('data-prototype')
                .replace(/__name__label__/g, 'Tag n°' + (index + 1))
                .replace(/__name__/g, index)
            ;

        var $prototype = $(template);

        addDeleteLink($prototype);

        $container.append($prototype);

        index++;
    }

    function addDeleteLink($prototype) {
        var $deleteLink = $('<a href="#" class="btn btn-danger">Supprimer</a>');

        $prototype.append($deleteLink);

        $deleteLink.click(function (e) {
            $prototype.remove();

            e.preventDefault(); // évite qu'un # apparaisse dans l'URL
            return false;
        });
    }
});
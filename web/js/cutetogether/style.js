$(document).ready(function () {
    $('.js-datepicker').datepicker({
        format: 'yyyy-mm-dd'
    });
    $('.menu-link').click(function () {
        window.location.href = $(this).attr("href");
    });
});

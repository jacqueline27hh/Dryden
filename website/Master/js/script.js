//offcanvas Navigation
$(document).ready(function () {
    $('[data-toggle=offcanvas]').click(function () {
        $('.row-offcanvas').toggleClass('active')
    });
});

$("document").ready(function () {
    $("#slideshow li:first").before($("#slideshow li:last"));
    imgWidth = $("#slideshow li:first").width();
    $("#slideshow").css({ left: -imgWidth });
});


$("#slide_prev").click(function () {
    $("#slideshow").animate({ left: "+=1140px" }, 700, function () {
        $("#display li:first").before($("#display li:last"));
        $("#slideshow").css({ left: "-=1140px" });
    });
});

$("#slide_next").click(function () {
    $("#slideshow").animate({ left: "-=1140px" }, 700, function () {
        $("#display li:last").after($("#display li:first"));
        $("#slideshow").css({ left: "+=1140px" });
    });
});

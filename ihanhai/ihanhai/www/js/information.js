$(document).ready( function () {
    // $("a#trigger").trigger('hover');
    $("#trigger").addClass('abelChoose');
    $("#trigger2").on("click", function () {
    //stuff to do on mouseover
    // alert('t');
      $("#trigger").removeClass('abelChoose');
});
    // alert($("a#trigger").text())

});
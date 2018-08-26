$(document).ready(function () {

  $('#deletePostImg').click(function (e) {
    e.preventDefault();
    $('#deletePostImgCheckBox').slideDown();
    $('#deleteImgCheckBox')[0].checked = true;
  });

  $('#deleteImgCheckBox').click(function (e) {
    e.preventDefault();
    $('#deletePostImgCheckBox').slideUp();
    $('#deleteImgCheckBox')[0].checked = false;
  });

  var els = document.getElementsByClassName("editor");
  Array.prototype.forEach.call(els, function (el) {
    CKEDITOR.replace(el);
    console.log(el);
  });
});
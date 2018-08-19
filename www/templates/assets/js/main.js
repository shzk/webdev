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

  CKEDITOR.replace('ck');

});
$(document).on('turbolinks:load', ()=> {
  $('#image-box').on('change', function (e) {
    var file = e.target.files[0];
    var blobUrl = window.URL.createObjectURL(file);
    var img = document.getElementById('0');
    img.src = blobUrl;
});
}

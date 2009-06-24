$(function() {
  $('form').ajaxForm({dataType: 'script'});

  $(':file').change(function() {
    var uploadId = 'upload_' + new Date().getTime();
    $('#files').append('<li id="' + uploadId + '">' + this.value + ' <span>(uploading)</span></li>');
    $('#upload_id').val(uploadId);
    $(this).closest('form').submit();
  });
});

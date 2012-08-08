$("#comment-form-dialog").html "<%= escape_javascript(render('comment_form_modal')) %>"
$("#comment-form-dialog").modal
  show: true
$("#comment-form").html "<%= escape_javascript(render('form')) %>"
$("#comment-form").modal
  show: true
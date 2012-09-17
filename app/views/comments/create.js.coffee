$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments').html "<%= escape_javascript(render :partial => 'comments', :locals => {:comments => @excerpt.comments}) %>"
$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments-count>span').html "<%= @excerpt.comments.count %>"

$("#comment-form-dialog").modal 'hide'

$('html, body').animate
  scrollTop: $('.comment[data-id="<%= @comment.id %>"]').offset().top
  'fast'

$('.comment[data-id="<%= @comment.id %>"]').fadeOut(400).fadeIn(400).fadeOut(400).fadeIn(400).fadeOut(400).fadeIn(400)


$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments').append "<%= escape_javascript(render :partial => 'comment', :locals => {:comment => @comment}) %>"
$("#comment-form-dialog").modal 'hide'
$('html, body').animate
  scrollTop: $('.comment[data-id="<%= @comment.id %>"]').offset().top
  'fast'

$('.comment[data-id="<%= @comment.id %>"]').hide 'fast', ()->
  $('.comment[data-id="<%= @comment.id %>"]').slideDown 'slow'


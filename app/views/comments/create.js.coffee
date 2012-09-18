$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments').html "<%= escape_javascript(render :partial => 'comments', :locals => {:comments => @excerpt.comments}) %>"
$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments-count>span').html "<%= @excerpt.comments.count %>"
$('.excerpt[data-id="<%= @excerpt.id %>"]>.comments').show()

if $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').attr("data-remote")
  $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').attr("href", "#").removeAttr("data-remote")
  $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').bind "click", ()->
    $(this).parent().find('.comments').toggle()
    return false

$("#comment-form-dialog").modal 'hide'

$('html, body').animate
  scrollTop: $('.comment[data-id="<%= @comment.id %>"]').offset().top
  'fast'

$('.comment[data-id="<%= @comment.id %>"]').fadeOut(400).fadeIn(400).fadeOut(400).fadeIn(400).fadeOut(400).fadeIn(400)


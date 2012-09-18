$('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments').html "
  <%= escape_javascript(render :partial => 'comments', :locals => {:comments => @comments}) %>"

if $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').attr("data-remote")
  $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').attr("href", "#").removeAttr("data-remote")
  $('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments-count').bind "click", ()->
    $(this).parent().find('.comments').toggle()
    return false
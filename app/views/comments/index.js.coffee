$('div.excerpt[data-id="<%= @excerpt_id %>"]>.comments').html "
  <%= escape_javascript(render :partial => 'comments', :locals => {:comments => @comments}) %>"
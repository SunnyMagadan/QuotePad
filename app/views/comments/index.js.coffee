excerpt = $('div.excerpt[data-id="<%= @excerpt_id %>"]')
comments = excerpt.find('.comments')

if comments.length > 0
  comments.replaceWith "<%= escape_javascript(@comments_html) %>"
else
  excerpt.append "<%= escape_javascript(@comments_html) %>"
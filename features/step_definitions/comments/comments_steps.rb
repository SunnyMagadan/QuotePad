Then /^I should see 2 comments with content:$/ do |table|
  table.hashes.each do |hash|
    comments = page.find('div.comments>div.comment')
    comments.count.should_not be(0)
    comments.each do |comment|
      comment.should have_content(hash[:Content])
    end
  end
end


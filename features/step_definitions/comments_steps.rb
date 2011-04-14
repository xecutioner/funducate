Given /^the following comments:$/ do |comments|
  Comments.create!(comments.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) comments$/ do |pos|
  visit comments_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following comments:$/ do |expected_comments_table|
  expected_comments_table.diff!(tableish('table tr', 'td,th'))
end

Then /^(\d+) comment should exist$/ do |arg1|
  Comment.count.should == 1
end

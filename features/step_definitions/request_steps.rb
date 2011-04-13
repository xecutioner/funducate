Given /^the following create_requests:$/ do |create_requests|
  CreateRequest.create!(create_requests.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) create_request$/ do |pos|
  visit create_requests_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following create_requests:$/ do |expected_create_requests_table|
  expected_create_requests_table.diff!(tableish('table tr', 'td,th'))
end

Given /^I am currently on request page$/ do
  visit(request_home_path)
end

Given /^I am currently on create_request page$/ do
  visit(new_person_request_path(@person))
end

Then /^(\d+) request should exist$/ do |arg1|
  Request.count.should == 1
end

Given /^I select "([^"]*)" as "([^"]*)"$/ do |selector, value|
    select(value.to_s, :from => "#{selector}")
end


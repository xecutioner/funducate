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

Given /^the following edit_and_delete_requests:$/ do |edit_and_delete_requests|
  EditAndDeleteRequest.create!(edit_and_delete_requests.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) edit_and_delete_request$/ do |pos|
  visit edit_and_delete_requests_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following edit_and_delete_requests:$/ do |expected_edit_and_delete_requests_table|
  expected_edit_and_delete_requests_table.diff!(tableish('table tr', 'td,th'))
end

Given /^I am authenticated$/ do
  visit new_person_session_path
  @person = Person.create!(:name => "Kapil", :level => "Undergraduate", :gpa => "3.5", :address => "Kathmandu", :dob => "12/12/2010", :email => "kapil@a.com", :password => "secret")
  fill_in "Email", :with => "kapil@a.com"
  fill_in "Password", :with => "secret"
  click_button "Sign in"
end

Then /^I am currently on request_index page$/ do
  visit(person_requests_path(@person))
end

Given /^I disable confirm dialog box$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
end
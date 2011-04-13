Given /^the following donations:$/ do |donations|
  Donation.create!(donations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) donation$/ do |pos|
  visit donations_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following donations:$/ do |expected_donations_table|
  expected_donations_table.diff!(tableish('table tr', 'td,th'))
end

Then /^(\d+) donation should exist$/ do |arg1|
  Donation.count.should == 1
end

Given /^I am currently on the home page$/ do
  visit(root_path)
end

Given /^A request is created$/ do
  visit new_person_session_path
  @person = Person.create!(:name => "Kapil", :level => "Undergraduate", :gpa => "3.5", :address => "Kathmandu", :dob => "12/12/2010", :email => "kapil@a.com", :password => "secret")
  fill_in "Email", :with => "kapil@a.com"
  fill_in "Password", :with => "secret"
  click_button "Sign in"
  @request = @person.requests.create!(:title => "I want to be a MITian", :pledged_amount => "$100000", :deadline => "10/12/2013", :description => "Kathmandu")
end

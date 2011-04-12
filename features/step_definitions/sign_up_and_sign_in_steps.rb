Given /^the following sign_up_and_sign_ins:$/ do |sign_up_and_sign_ins|
  SignUpAndSignIn.create!(sign_up_and_sign_ins.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) sign_up_and_sign_in$/ do |pos|
  visit sign_up_and_sign_ins_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following sign_up_and_sign_ins:$/ do |expected_sign_up_and_sign_ins_table|
  expected_sign_up_and_sign_ins_table.diff!(tableish('table tr', 'td,th'))
end

Then /^(\d+) user should exist$/ do |number|
  Person.count.should == 1
end

Given /^a user exists with "([^"]*)" and password "([^"]*)"$/ do |email, pass|
  Person.create!(:email => email, :password => pass)
end

Given /^I am currently on registration page$/ do
  visit(new_person_registration_path)
end
Given /^sleep (\d+) seconds$/ do |duration|
  sleep(duration.to_i)
end

Given /^a student exists with name "([^"]*)" and level "([^"]*)" and gpa "([^"]*)" and address "([^"]*)" and dob "([^"]*)" and email"([^"]*)" and password "([^"]*)"$/ do |name, level, gpa, address, dob, email, pass|
  Person.create!(:name => name, :level => level, :gpa => gpa, :address => address, :dob => dob, :email => email, :password => pass)
end

Given /^I am currently on login page$/ do
  visit(new_person_session_path)
end

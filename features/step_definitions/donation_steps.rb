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

When /^I follow image link "([^"]*)"$/ do |arg1|
  find(:xpath, "//img[@alt = '#{img_alt}']/parent::a").click()
end


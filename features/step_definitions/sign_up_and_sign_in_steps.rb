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

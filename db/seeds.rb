# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
[
  {:id => "1", :name => "Kapil", :level => "Under Graduate", :gpa => "3.4", :address => "Kathmandu", :dob => "01/01/2000", :email => "kapil@sprout.com", :password => "secret"},
  {:id => "2", :name => "Khurra", :level => "Under Graduate", :gpa => "3.4", :address => "Kathmandu", :dob => "01/01/2000", :email => "khurra@sprout.com", :password => "secret"},
  {:id => "3", :name => "Bamti", :level => "Under Graduate", :gpa => "3.4", :address => "Kathmandu", :dob => "01/01/2000", :email => "bamti@sprout.com", :password => "secret"},
  {:id => "4", :name => "Baba", :level => "Under Graduate", :gpa => "3.4", :address => "Kathmandu", :dob => "01/01/2000", :email => "baba@sprout.com", :password => "secret"},
  {:id => "5", :name => "Baajey", :level => "Under Graduate", :gpa => "3.4", :address => "Kathmandu", :dob => "01/01/2000", :email => "baajey@sprout.com", :password => "secret"},
  ].each do |attrs|
    Person.find_or_create_by_id(attrs)
  end

  [
    {:id => "1", :title => "I want to be an MITian", :pledged_amount => "Under Graduate", :deadline => "10/10/2013", :description => "Lorem ipsum, lorem ipsum dolor sit amet, Lorem, dummy text, loren ipsum (yes, spelled wrong), Lorem ipsum sample textipsum loremlorem ipsum sample, Latin copy text, Lorem ipsum text, Latin dummy text, template text, sample text, dummy copy text, Latin sample text, HTML dummy text, Lorem ipsum dummy text, filler text or copy filling text, and many other names.", :person_id => "1"},
    {:id => "2", :title => "I want to be a Sweeper", :pledged_amount => "Under Graduate", :deadline => "10/10/2013", :description => "Lorem ipsum, lorem ipsum dolor sit amet, Lorem, dummy text, loren ipsum (yes, spelled wrong), Lorem ipsum sample textipsum loremlorem ipsum sample, Latin copy text, Lorem ipsum text, Latin dummy text, template text, sample text, dummy copy text, Latin sample text, HTML dummy text, Lorem ipsum dummy text, filler text or copy filling text, and many other names.", :person_id => "2"},
    {:id => "3", :title => "Scholarship for studying Pilot", :pledged_amount => "Under Graduate", :deadline => "10/10/2013", :description => "Lorem ipsum, lorem ipsum dolor sit amet, Lorem, dummy text, loren ipsum (yes, spelled wrong), Lorem ipsum sample textipsum loremlorem ipsum sample, Latin copy text, Lorem ipsum text, Latin dummy text, template text, sample text, dummy copy text, Latin sample text, HTML dummy text, Lorem ipsum dummy text, filler text or copy filling text, and many other names.", :person_id => "3"},
    {:id => "4", :title => "I want to be an Engineer", :pledged_amount => "Under Graduate", :deadline => "10/10/2013", :description => "Lorem ipsum, lorem ipsum dolor sit amet, Lorem, dummy text, loren ipsum (yes, spelled wrong), Lorem ipsum sample textipsum loremlorem ipsum sample, Latin copy text, Lorem ipsum text, Latin dummy text, template text, sample text, dummy copy text, Latin sample text, HTML dummy text, Lorem ipsum dummy text, filler text or copy filling text, and many other names.", :person_id => "4"},
    {:id => "5", :title => "I want to be an Doctor", :pledged_amount => "Under Graduate", :deadline => "10/10/2013", :description => "Lorem ipsum, lorem ipsum dolor sit amet, Lorem, dummy text, loren ipsum (yes, spelled wrong), Lorem ipsum sample textipsum loremlorem ipsum sample, Latin copy text, Lorem ipsum text, Latin dummy text, template text, sample text, dummy copy text, Latin sample text, HTML dummy text, Lorem ipsum dummy text, filler text or copy filling text, and many other names.", :person_id => "5"},
    ].each do |attrs|
      Request.find_or_create_by_id(attrs)
    end
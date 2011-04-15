require 'spec_helper'

describe Donation do
  it { should validate_presence_of :donor_email }
  it { should validate_presence_of :donor_name }
  it { should validate_presence_of :payment_type }
  it { should validate_presence_of :card_number }
  it { should validate_presence_of :donated_amount }
  it { should belong_to :request }

  context "It should have card_number length between 13 and 16 characters" do
     before do
       @person = Person.create!(:name => "Kapil", :level => "Undergraduate", :gpa => "3.5", :address => "Kathmandu", :dob => "12/12/2010", :email => "kapil@a.com", :password => "secret")
       @request = @person.requests.create!(:title => "I want to be a MITian", :pledged_amount => "$100000", :deadline => "10/12/2013", :description => "Kathmandu")
      @donation = @request.donations.create!( :donor_email => "manish@mail.com", :donor_name => "Manish", :payment_type => "Visa", :card_number => "123456789012345", :donated_amount => "1000")
     end
     it "should have card_number length between 13 and 16 characters" do
       @donation.card_number.length.should >= 13
       @donation.card_number.length.should <= 16
     end
   end

end
require 'spec_helper'

describe Request do
  it { should validate_presence_of :title }
  it { should validate_presence_of :pledged_amount }
  it { should validate_presence_of :deadline }
  it { should validate_presence_of :description }
  it { should have_many :donations }
  it { should have_many :comments }
  it { should belong_to :person }

  context "It should have deadline greater than today" do
    before do
      @person = Person.create!(:name => "Kapil", :level => "Undergraduate", :gpa => "3.5", :address => "Kathmandu", :dob => "12/12/2010", :email => "kapil@a.com", :password => "secret")
      @request = @person.requests.create!(:title => "I want to be a MITian", :pledged_amount => "$100000", :deadline => "10/12/2013", :description => "Kathmandu")
    end
    it "should have deadline greater than or equals to today" do
      @request.deadline.should >= Date.today
    end
  end
end
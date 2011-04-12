require 'spec_helper'

describe Person do
  it { should validate_presence_of :name }
  it { should validate_presence_of :level }
  it { should validate_presence_of :gpa }
  it { should validate_presence_of :address }
  it { should validate_presence_of :dob }
  it { should validate_presence_of :email }
  it { should have_many :requests }
end
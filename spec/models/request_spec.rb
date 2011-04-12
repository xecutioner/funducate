require 'spec_helper'

describe Request do
  it { should validate_presence_of :title }
  it { should validate_presence_of :pledged_amount }
  it { should validate_presence_of :deadline }
  it { should validate_presence_of :description }
  it { should have_many :donations }
  it { should belong_to :person }
end
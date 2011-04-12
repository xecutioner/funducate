require 'spec_helper'

describe Donation do
  it { should validate_presence_of :donor_email }
  it { should validate_presence_of :donor_name }
  it { should validate_presence_of :payment_type }
  it { should validate_presence_of :card_number }
  it { should validate_presence_of :donated_amount }
  it { should belong_to :request }
end
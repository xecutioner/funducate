class Donation < ActiveRecord::Base

  belongs_to :request

  validates :donor_email, :presence => true
  validates :donor_name, :presence => true
  validates :payment_type, :presence => true
  validates :card_number, :presence => true,:length => {:minimum => 13, :maximum => 16}
  validates :donated_amount, :presence => true
end
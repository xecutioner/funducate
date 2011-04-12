class Request < ActiveRecord::Base

  belongs_to :person
  has_many :donations

  validates :title, :presence => true
  validates :pledged_amount, :presence => true
  validates :deadline, :presence => true
  validates :description, :presence => true
end
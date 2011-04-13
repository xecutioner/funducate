class Request < ActiveRecord::Base

  belongs_to :person
  has_many :donations

  validates :title, :presence => true
  validates :pledged_amount, :presence => true
  validates :deadline, :presence => true
  validates_date :deadline, :on_or_after =>:today
  validates :description, :presence => true
  after_initialize :set_date

  private
  def set_date
    self.deadline ||=Date.today
  end

end
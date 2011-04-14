class Request < ActiveRecord::Base

  cattr_reader :per_page  # FOR: pagination
  @@per_page = 3

  belongs_to :person
  has_many :donations
  has_many :comments

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

  def self.get_needy_requests
    self.where("deadline >= '#{Date.today}'").find(:all,:order =>'deadline',:limit=>5)
  end

end

class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :requests

  validates :name, :presence => true
  validates :level, :presence => true
  validates :gpa, :presence => true
  validates :address, :presence => true
  validates :dob, :presence => true
  validates :email, :presence => true
end
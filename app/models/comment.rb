class Comment < ActiveRecord::Base
  validates :name,:presence =>true
  validates :email,:presence =>true
  validates :body,:presence =>true
  belongs_to :request
end

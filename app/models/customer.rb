class Customer < ActiveRecord::Base
  has_many :ratings
  has_many :orders
  
  validates :email, :password, :firstname, :lastname, presence: true
  validates :email, uniqueness: true
end

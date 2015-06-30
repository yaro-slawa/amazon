class Customer < ActiveRecord::Base
  has_many :ratings
  has_many :orders

  validates :email, :password, :firstname, :lastname, presence: true
  validates :email, uniqueness: true

  def order_in_progress
    orders.in_progress.first
  end

  def create_order
    
  end
end

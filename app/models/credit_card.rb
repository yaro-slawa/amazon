class CreditCard < ActiveRecord::Base
  belongs_to :customer

  has_many :orders
  
  validates :number, :cvv, :exp_month, :exp_year, :firstname, :lastname
end

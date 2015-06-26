class Rating < ActiveRecord::Base
  belongs_to :customer
  belongs_to :book
  
  validates :valuation, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}

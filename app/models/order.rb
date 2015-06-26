class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :credit_card

  has_many :order_items
  
  validates :price, :completed_date, :state, presence: true
  validates :state, inclusion: { in: ["in progress", "completed", "shipped"], message: "%{value} is not a valid state" }

  after_initialize do |order|
    order.state = "in progress"
  end
end

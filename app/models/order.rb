class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :credit_card

  has_one :billing_address
  has_one :shipping_address
  has_many :order_items
  has_many :books, through: :order_items
  
  validates :price, :state, presence: true
  validates :completed_date, presence: true, if: :state_completed?
  validates :state, inclusion: { in: ["in progress", "completed", "shipped"], message: "%{value} is not a valid state" }

  scope :in_progress, -> { where state: "in progress" }

  after_initialize do |order|
    order.state ||= "in progress"
  end

  before_save do |order|
    order.price = total_price_calculation
  end

  def state_completed?
    state == "completed"
  end

  def total_price
    price
  end

  private
  def total_price_calculation
    order_items.map { |item| item.price * item.quantity }.sum
  end
end

class Address < ActiveRecord::Base
  belongs_to :billing_address, class_name: "Address"
  belongs_to :shipping_address, class_name: "Address"
  
  validates :address, :zipcode, :city, :phone, :country, presence: true
end

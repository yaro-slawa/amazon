class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  validates :title, :price, :count, presence: true
end

class AddRefToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :book, index: true, foreign_key: true
    add_reference :order_items, :order, index: true, foreign_key: true
  end
end

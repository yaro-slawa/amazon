class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price
      t.date :completed_date
      t.string :state

      t.timestamps null: false
    end
  end
end

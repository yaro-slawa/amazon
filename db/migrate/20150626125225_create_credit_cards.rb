class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.integer :cvv
      t.integer :exp_month
      t.integer :exp_year
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end

class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :category_id
      t.datetime :fecha
      t.string :concept
      t.integer :amount
      t.timestamps null: false
    end
  end
end

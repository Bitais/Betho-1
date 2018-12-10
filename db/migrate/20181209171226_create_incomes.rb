class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.integer :date
      t.string :description
      t.string :type
      t.string :category

      t.timestamps
    end
  end
end

class RemoveDateFromIncomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :incomes, :date, :integer
    add_column :incomes, :date, :date
  end
end

class RenameTypeToIncomeTypeFromIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :incomes, :type, :income_type
  end
end

class AddEstateRefToIncomes < ActiveRecord::Migration[5.2]
  def change
    add_reference :incomes, :estate, foreign_key: true
  end
end

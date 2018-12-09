class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.string :name
      t.string :street
      t.string :city
      t.text :description

      t.timestamps
    end
  end
end

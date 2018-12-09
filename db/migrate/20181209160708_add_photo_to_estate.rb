class AddPhotoToEstate < ActiveRecord::Migration[5.2]
  def change
    add_column :estates, :photo, :string
  end
end

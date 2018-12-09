class Estate < ApplicationRecord
  # Associations
  belongs_to :user

  validates :name, :street, :city, presence: true

  def address
    "#{street}, #{city}"
  end
end

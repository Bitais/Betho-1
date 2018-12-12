class Estate < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :incomes

  validates :name, :street, :city, presence: true

  def address
    "#{street}, #{city}"
  end
end

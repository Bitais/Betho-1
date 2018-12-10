class Estate < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :income

  validates :name, :street, :city, presence: true
  validates :name, uniqueness: true

  def address
    "#{street}, #{city}"
  end
end

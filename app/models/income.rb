class Income < ApplicationRecord
  belongs_to :estate

  validates :amount, :date, :description, :type, :category, presence: true
end

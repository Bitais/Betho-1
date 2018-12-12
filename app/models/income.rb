class Income < ApplicationRecord
  belongs_to :estate

  validates :amount, :date, :description, :income_type, :category, presence: true
end

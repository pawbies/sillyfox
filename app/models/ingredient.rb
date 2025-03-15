class Ingredient < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }
  validates :dosage, length: { maximum: 20 }
  validates :rating, presence: true

  enum :rating, { bad: 0, meh: 1, good: 2 }, validate: true
end

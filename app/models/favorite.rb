class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient

  # validate :test

  # private
  #   def test
  #     errors.add(:user_id, " is bad") if user_id == 11
  #   end
end

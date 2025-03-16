class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :favorites
  has_many :favorite_ingredients, through: :favorites, source: :ingredient

  validates :email_address, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :role, presence: true

  enum :role, { user: 0, admin: 1 }

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def admin?
    role == "admin"
  end
end

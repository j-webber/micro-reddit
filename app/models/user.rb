class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :email_address, :username, presence: true, uniqueness: true
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end

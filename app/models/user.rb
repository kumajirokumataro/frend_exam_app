class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true
  validates :email, presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, length: { minimum: 6 }
end

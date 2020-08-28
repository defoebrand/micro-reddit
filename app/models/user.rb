class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :email, :username, uniqueness: true
  validates :email, :username, :password, presence: true
end

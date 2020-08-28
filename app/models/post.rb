class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, uniqueness: true
  validates :title, :body, presence: true
end

class Post < ApplicationRecord
  validates :author, presence: true
  validates :title, length: { minimum: 10 }
  validates :body, length: {minimum: 20}
end

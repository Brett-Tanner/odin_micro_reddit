class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, presence: true

  validates :title, length: {maximum: 50}
end

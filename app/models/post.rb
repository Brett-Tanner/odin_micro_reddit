class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :body, :user_id, presence: true

  validates :title, length: {maximum: 50}
end

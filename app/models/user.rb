class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, :pwd, presence: true

  validates :name, uniqueness: true
  validates :name, length: {in: 3..20}
  validates :name, format: {with: /[a-zA-Z0-9]+/, message: "must be only alphanumeric characters", multiline: true}

  validates :pwd, length: {minimum: 8}
  validates :pwd, confirmation: true
  validates :pwd_confirmation, presence: true
  validates :pwd, format: {with: /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/, message: "must have uppercase, lowercase and number/special character", multiline: true}
end

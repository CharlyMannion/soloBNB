class User < ApplicationRecord
  has_secure_password
  # has_many :listings

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

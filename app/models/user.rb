class User < ApplicationRecord
  validates :name, presence: ture, length: { maximum: 50 }
  validates :email, presence: ture, length: { maximum: 255 },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end

class Account < ApplicationRecord
  validates :username, presence: true, length: { maximum: 51 }
  validates :password, presence: true, length: { maximum: 12 }
end

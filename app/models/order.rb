class Order < ApplicationRecord
  validates :name, presence: true, length: { minimum:3, maximum:50 }
  validates :email, presence: true, length: { minimum:3, maximum:50 }
end


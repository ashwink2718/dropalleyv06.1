class Order < ApplicationRecord
	belongs_to :user
  validates :name, presence: true, length: { minimum:3, maximum:50 }
  validates :user_id, presence: true
end


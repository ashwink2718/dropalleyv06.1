class User < ApplicationRecord
  validates :first_name, presence: true, length: { minimum:3, maximum:50 }
  validates :last_name, presence: true, length: { minimum:3, maximum:50 }
  validates :email, presence: true, length: { minimum:3, maximum:50 }
end


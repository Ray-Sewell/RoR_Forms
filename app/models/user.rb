class User < ApplicationRecord
    validates :username, presence: true, length: { maximum:20 }
    validates :password, presence: true, length: { minimum: 8, maximum:20 }
    validates :email, presence: true, length: { maximum:30 }
end

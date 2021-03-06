class User < ApplicationRecord
    has_secure_password 
    has_many :gardens

    has_many :friendships, dependent: :destroy
    has_many :friends, through: :friendships

    validates :username, presence: true, uniqueness: true
    validates :full_name, presence: true
    validates :bio, presence: true, length: { maximum: 40 }
    validates :password, presence: true

    def first_name
        name_array = self.full_name.split(" ")
        first_name = name_array[0]
    end
    
end

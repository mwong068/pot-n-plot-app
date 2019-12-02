class User < ApplicationRecord

    has_many :gardens

    validates :username, presence: true, uniqueness: true
    validates :full_name, presence: true
    validates :bio, presence: true
    
end

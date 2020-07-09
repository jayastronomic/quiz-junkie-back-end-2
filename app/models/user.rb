class User < ApplicationRecord
    has_one :score

    validates :username, uniqueness: true
    validates :username, presence: true
end

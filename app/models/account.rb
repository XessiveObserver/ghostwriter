class Account < ApplicationRecord
    validates :biography, presence: true, length: {minimum: 10}
    validates :portfolio, presence: true, length: {minimum: 10}
    has_one_attached :profile_pic

    belongs_to :user
end

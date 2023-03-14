class Account < ApplicationRecord
    validates :biography, presence: true, length: {minimum: 10}
    validates :portfolio, presence: true, length: {minimum: 10}
    has_one_attached :profile_pic

    has_rich_text :biography
    has_rich_text :portfolio

    belongs_to :user
end

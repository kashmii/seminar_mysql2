class Reservation < ApplicationRecord
    belongs_to :seminar
    validates :user_name, presence: true
    validates :kana, presence: true
    validates :email, presence: true
end

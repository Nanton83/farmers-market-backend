class Market < ApplicationRecord
    has_many :items
    validates :name, :location, :is_open, presence: true
end

class Market < ApplicationRecord
    has_many :items
    validates :name, :location, presence: true
end

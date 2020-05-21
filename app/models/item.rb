class Item < ApplicationRecord
    belongs_to :market
    validates :name, :price, :amount_available, :unit, presence: true
    # validates_inclusion_of :unit, :in => ['pound', 'pounds', 'each', 'bunch']
end

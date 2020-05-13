class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :is_open

  has_many :items
end

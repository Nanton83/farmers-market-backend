class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  has_many :items
end

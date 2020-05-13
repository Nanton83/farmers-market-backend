class ItemSerializer < ActiveModel::Serializer
  attributes :id, :market_id, :name, :description, :price, :amount_available, :unit
end

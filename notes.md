Market
has_many :items
:name - string, :location - string, :open - boolean


Item
belongs_to :market
:market_id - integer, :name - string, :price - float, :amount_available - integer
Market
has_many :items
:name - string, :location - string, :is_open - boolean


Item
belongs_to :market
:market_id - integer, :name - string, :description - string, :price - float, :amount_available - integer
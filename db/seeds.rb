market = Market.create(name: 'Brooks Street Downtown', location: 'Wake Forest, NC', is_open: true)

item = Item.create(market_id: 1, name: 'Blueberries', description: 'Perfectly Ripe', price: 1.50, amount_available: 10, unit: 'pound')
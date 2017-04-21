ShopifyApp.configure do |config|
  config.api_key = "c6c8d02007a48480ecf7190108856512"
  config.secret = "5fa7f267db1e11824b2e20fb87eb1bc4"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.webhooks = [
    {topic: 'orders/create', address: 'https://yklaglxefw.localtunnel.me/webhooks/orders_create', format: 'json', fields: ['id', 'email', 'createed_at', 'total_line_items_price', 'line_items', 'customer'  ]}
  ]
end

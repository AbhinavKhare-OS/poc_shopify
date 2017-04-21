class OrdersCreateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
      byebug
      line_tems = webhook['line_items']
      line_tems.each do |item|
        Rails.logger.info(item)
      end
    end
  end
end

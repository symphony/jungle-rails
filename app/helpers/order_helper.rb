module OrderHelper
  def map_items
    @items ||= @order.line_items.map {|item| {product: Product.find(item[:product_id]), quantity: item[:quantity]} } # todo make helper
  end

  def get_total
    @total ||= @items.map {|entry| entry[:product].price_cents * entry[:quantity]}.sum # todo make helper
  end
end

module OrderHelper

  def map_items
    @items ||= @order.line_items.map {|item| {product: Product.find(item.product_id), quantity: item.quantity} }
  end

end
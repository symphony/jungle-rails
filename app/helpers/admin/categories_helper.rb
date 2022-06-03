module Admin::CategoriesHelper
  def product_count id
    Product.where(:category_id == id).count
  end
end

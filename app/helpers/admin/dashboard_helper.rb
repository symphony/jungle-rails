module Admin::DashboardHelper

  def product_count
    Product.count
  end

  def category_count
    Category.count
  end

end

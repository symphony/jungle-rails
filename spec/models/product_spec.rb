require 'rails_helper'

describe Product, type: :model do
  describe 'Validations' do

    it 'product to be saved' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
    end

    it 'has a name' do
      params = { name: nil, description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.name).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end

    it 'has a price' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: 3, image: 'hello.jpg' }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.price).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end

    it 'has a quantity' do
      params = { name: 'hello', description: 'hello', category_id: 1, quantity: nil, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.quantity).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end

    it 'has a category' do
      params = { name: 'hello', description: 'hello', category_id: nil, quantity: 3, image: 'hello.jpg', price: 100 }
      @category = Category.new
      @product = Product.new params
      @product.save
      expect(@product.category).to be_nil
      expect(@product.errors.full_messages).not_to be_empty
    end
  end
end




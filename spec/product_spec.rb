require_relative 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should should have a name' do
      @product = Product.new({
      name:  'Men\'s Classy shirt',
      quantity: 10,
      price: 64.99,
      category_id: 1
    })
      expect(@product.name).to_not be_nil
    end
    it 'should have a price' do
      @product = Product.new({
      name:  'Men\'s Classy shirt',
      quantity: 10,
      price: 64.99,
      category_id: 1
    })
      expect(@product.price).to_not be_nil
    end
    it 'should have a category' do
      @product = Product.new({
      name:  'Men\'s Classy shirt',
      quantity: 10,
      price: 64.99,
      category_id: 1
    })
      expect(@product.category_id).to_not be_nil
    end
    it 'should have a quantity' do
      @product = Product.new({
      name:  'Men\'s Classy shirt',
      quantity: 10,
      price: 64.99,
      category_id: 1
    })
      expect(@product.quantity).to_not be_nil
    end
  end
end
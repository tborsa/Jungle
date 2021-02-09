require 'rails_helper'

# visit the home page
# find (first) product box 
# click blue add button
# check nav to see if cart quantity updated
# click on cart navigation
# check if product is in cart
# check if the price matches (for the prodect added)
# check if item (name) is in the cart

RSpec.feature "PurchaseProducts", type: :feature, js: true do

  before :each do
    @category = Category.create! name: "test category"
    # Product.create! name: 'test product', category: @category
    @category.products.create!(
      name: 'test product',
      description: 'test description',
      image: '-',
      quantity: 5,
      price: 12.50
    )
  end

  # scenario "A logged in user purchases a product" do
  # end

  scenario "A anonymous user purchases a product" do
    visit '/'
    first('article.product').find_button('Add').click()
    find_link('My Cart (1)').click()
    expect(find('header.page-header')).to have_content('My Cart')
    expect(page).to have_content('test product')
    expect(page).to have_content('12.50')
    # page.save_screenshot()
  end

end

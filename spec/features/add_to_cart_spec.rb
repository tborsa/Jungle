require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    @product = @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end

  scenario "They add to cart" do
    visit root_path

    # commented out b/c it's for debugging only
    # save_and_open_screenshot
    click_on("Add")
    expect(page.has_content?('(1)'))
  end
end

require 'rails_helper'

RSpec.feature "UserCreates", type: :feature, js: true do
  scenario "They can create account" do
    visit root_path
    click_on("Login")
    click_on("Sign Up")
    fill_in 'user[name]', with: 'Fire'
    fill_in 'user[email]', with: 'graysonclee@gmail.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_on("Submit")
    expect(page.has_content?('logout'))
  end
end

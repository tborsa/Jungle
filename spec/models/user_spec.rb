require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Users" do
    it 'Should create user with password' do 
      user = User.new(name: "John", email: "john@doe.com", password: "password")
      expect(user.name).to_not be_nil
    end
    it 'Should create user with email' do 
      user1 = User.create(name: "John", email: "john@doe.com", password: "password", password_confirmation: "password")
      expect(user1.name).to_not be_nil
    end
    it 'Should not create user missing all three' do 
      user = User.new()
      expect(user.name).to be_nil
    end
    it 'password must be minimum length' do 
      user = User.new(name: "John", email: "john@doe.com", password: "password", password_confirmation: "password")
      expect(user.name).to_not be_nil
    end
  end
end

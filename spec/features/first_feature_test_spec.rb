require 'rails_helper'

RSpec.feature "FirstFeatureTests", type: :feature, js: true do
  scenario "Passing Test" do
    true.should be true
  end

  scenario "Failing Test" do 
    false.should be true
  end
end
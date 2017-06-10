require 'rails_helper'

RSpec.describe "Item", :type => feature do
  let(:std_user) { create(:user, confirmed_at: DateTime.now) }
  let(:test_item) { create(:item, user: std_user) }

  feature 'View items' do        
    scenario 'allows user to view items' do
      login_as(std_user)
      visit user_path(std_user)
      expect(page).to have_content 'Item on the list:'
    end
  end
  
  feature 'Add item' do        
    scenario 'allows a user to add item' do
      login_as(std_user)
      visit user_path(std_user)
      fill_in 'item_name', :with => 'New Test Item'
      click_on 'Add'
      expect(page).to have_content 'New Test Item'
    end
  end
end
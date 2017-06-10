require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { create(:user, confirmed_at: DateTime.now) }
  let(:my_item) { create(:item, user: my_user) }
  
  describe "item create" do
    it "assigns the new item to @item" do
      post :create, item: {name: my_item.name, user_id: my_user.id}, user_id: my_user.id
  
      created_item = assigns(:item)
      expect(created_item.name).to eq my_item.name
      expect(created_item.user_id).to eq my_item.user_id
    end

    it "redirects to user info page" do
      post :create, item: {name: my_item.name, user_id: my_user.id}, user_id: my_user.id
      expect(response).to redirect_to User.last
    end
  end
end

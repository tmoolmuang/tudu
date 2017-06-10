require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:my_user) { create(:user, confirmed_at: DateTime.now) }
  let(:my_item) { create(:item, user: my_user) }
  
  describe "attributes" do
    it "has name, and user_id attributes" do
      expect(my_item).to have_attributes(name: my_item.name, user_id: my_user.id)
    end
  end
end

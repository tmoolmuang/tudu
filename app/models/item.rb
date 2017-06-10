class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: { message: 'Item name cannot be blank.' }
end

class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: { message: 'Item name cannot be blank.' }
  
  default_scope { order('created_at DESC') }

  def days_left
    day = 7 - (DateTime.now.to_date - created_at.to_date).to_i 
    if day >= 0
      day.to_s + " days left"
    else
      "over 7 days!"
    end
  end
end

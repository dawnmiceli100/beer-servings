class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :menu_items

  def brewery_name
    self.brewery.name
  end  
end
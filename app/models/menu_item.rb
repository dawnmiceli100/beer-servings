class MenuItem < ActiveRecord::Base
  belongs_to :place
  belongs_to :beer
  has_many :servings
  accepts_nested_attributes_for :servings

  def servings_for_form
    collection = servings.where(menu_item_id: id).order(size: :asc)
    collection.any? ? collection : servings.build
  end
end
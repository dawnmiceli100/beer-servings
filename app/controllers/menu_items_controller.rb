class MenuItemsController < ApplicationController

  def index
    @place = Place.first
    #@menu_items = @place.menu_items.all.sort_by {|x| [x.beer.brewery.name, x.beer.name]}
    @menu_items = @place.menu_items.order(:tap_number)
  end

  def show
    @menu_item = Beer.find(params[:id])
  end  
  
  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = Menu.new(menu_item_params)

    if @menu_item.save
      flash[:notice]  = "tap #{@menu_item.tap_number} has been successfully added."
      redirect_to menu_items_path
    else
      render 'new'
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    @servings = @menu_item.servings
  end
  
  def update
    @menu_item = MenuItem.find(params[:id])
    @menu_item.update_attributes(menu_item_params)

    if @menu_item.save
      flash[:notice]  = "tap #{@menu_item.tap_number} has been successfully added."
      redirect_to menu_items_path
    else
      render 'edit'
    end
  end  
  
  

  def menu_item_params
    params.require(:menu_item).permit(:beer_id, servings_attributes: [:id, :size, :price])
    #params.require(:menu_item).permit!
  end  

end  
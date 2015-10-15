class ItemsController < ApplicationController
  def create
    @item = current_user.items.new(item_params)
    
    if @item.save
      flash[:notice] = "your item was added"
    else
      flash[:error] = "there was a problem with your item"
    end
    
    redirect_to items_path
  end
  
  def index 
    @items = current_user.items
    @item = Item.new
  end
  
  private
  
  def item_params
    params.require(:item).permit([:name])
  end
  
end

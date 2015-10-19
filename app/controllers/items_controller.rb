class ItemsController < ApplicationController
  respond_to :html
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
  
  def destroy
    @item = current_user.items
    @user = User.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "Task was completed."
      redirect_to items_path
    else
      flash[:error] = "There was an error completing the task."
      render :welcome
    end
    
     respond_to do |format|
       format.html
       format.js
     end  
  end
  
  private
  
  def item_params
    params.require(:item).permit([:name])
  end
end

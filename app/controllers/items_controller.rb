class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    if !@item.save
      flash[:alert] = error_messages(@item)
    end
    redirect_to @item.user
  end
  
  def destroy
    @item = Item.find(params[:id])

    if !@item.destroy
       flash[:error] = "Item couldn't be removed. Try again."
    end
    redirect_to @item.user
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :user_id)
  end
end

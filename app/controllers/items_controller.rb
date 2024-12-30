class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.new(item_params)

    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  def update
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])

    if @item.update(item_params)
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  private
  def item_params
    params.require(:item).permit(:task, :completed)
  end
end

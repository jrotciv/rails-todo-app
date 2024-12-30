class ListsController < ApplicationController
  def index
    @lists = List.all.order(created_at: :desc)
  end
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items.order(:created_at)
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end

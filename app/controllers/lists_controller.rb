class ListsController < ApplicationController
  before_action :require_login
  before_action :set_list, only: [ :show, :destroy ]
  def index
    @lists = current_user.lists.order(created_at: :desc)
  end
  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def show
    @items = @list.items.order(:created_at)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = current_user.lists.find_by(id: params[:id])

    if @list.nil?
      redirect_to root_path
    end
  end
end

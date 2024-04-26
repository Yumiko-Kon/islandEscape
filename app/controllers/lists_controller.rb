class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    set_params
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path(@list)
  end

  def edit
    set_params
  end

  def update
    set_params
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def destroy
    set_params
    @list.destroy
    redirect_to lists_path, status: :see_other

    # destroy
    # @list = List.find(params[:id])
    # @list.destroy
    # redirect_to list_path(@list), status: :see_other
  end
  private
  def list_params
    params.require(:list). permit(:title, :detals)
  end

  def set_params
    @list = List.find(params[:id])
  end

end

class BookmarksController < ApplicationController
  before_action :find_list, only: [:show, :destroy]
  def new
     @list = List.new
  end

  def create
    @bookmark = Bookmart.create(list_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to lists_path
  end

  def find_list
    @bookmark = Bookmark.find(params[:id])
  end

end

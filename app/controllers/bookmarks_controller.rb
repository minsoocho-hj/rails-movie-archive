class BookmarksController < ApplicationController
  before_action :find_bookmark, only: :destroy

  def new
    @bookmark= Bookmark.new
  end

  def create

  end

  def destroy
    @bookmark.destroy
    redirect_to lists_path
  end

  private

  def find_bookmark
    @bookmark = bookmark.find(params[:id])
  end


end

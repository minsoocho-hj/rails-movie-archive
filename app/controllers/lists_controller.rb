class ListsController < ApplicationController
  before_action :find_list, only: [:show, :destroy, :edit, :update]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @bookmark = Bookmark.new
  end

  def edit
  end

  def update
    @list.update(list_params)
    if @list.save
      redirect_to list_path
    else
      render :edit
    end
  end

  # 이 부분 이해안된다.북마킄 뉴를 왜 만들지

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end

end

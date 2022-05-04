

class ListsController < ApplicationController
  def index
    @lists = List.all


  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks

    if params[:query].present?
      @bookmarks = @bookmarks.search_by_title_and_overview(params[:query])
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { bookmarks: @bookmarks } }
    end

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end


  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end

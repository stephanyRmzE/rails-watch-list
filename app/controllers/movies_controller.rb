class MoviesController < ApplicationController
def index
  @movies = Movie.order(:title).where("title like ?", "%#{params[:term]}%")
  render json: @movies.map(&:title)
end

end

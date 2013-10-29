class RatingsController < ApplicationController
  before_action :set_rating, only: [:show]


  # 
  # show the rating
  # 
  def show
  end

  private
    
    # 
    # filter to get the rating from the params
    # 
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:points, :comment)
    end
end

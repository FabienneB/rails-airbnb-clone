class ReviewsController < ApplicationController
  before_action :set_cowork

  def new
    # @cowork = Cowork.find(params[:cowork_id])
    @review = Review.new
  end

  def create
    # @cowork = Cowork.find(params[:cowork_id])
    @review = Review.new(review_params)
    @review.cowork = @cowork
    @review.rating = review_params["rating"].to_i
    if @review.save
      redirect_to bookings_path
    else
      render :new
    end
    # reviews_persisted = @cowork.reviews.select do |review|
    #   review.persisted?
    # end
    # @reviews = reviews_persisted.reverse
    # if @review.save
    #   respond_to do |format|
    #     format.html {redirect_to bookings_path}
    #     format.js{}
    #   end
    # else
    #   respond_to do |format|
    #     format.html {render "coworks/show"}
    #     format.js{}
    #   end
    # end
  end



  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def set_cowork
    @cowork = Cowork.find(params[:cowork_id])
  end

end


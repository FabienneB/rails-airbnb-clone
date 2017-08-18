class ReviewsController < ApplicationController

  # def create
  #   @cowork = Corwork.find(params[:cowork_id])
  #   @review = Review.new(review_params)
  #   review.cowork = @cowork
  #   if @cowork.save
  #     redirect_to

  # end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
end

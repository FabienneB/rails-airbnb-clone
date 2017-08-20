class ReviewsController < ApplicationController

  def create
    @cowork = Cowork.find(params[:cowork_id])
    @review = Review.new(review_params)
    @review.rating = review_params["rating"].to_i
    @review.cowork = @cowork
    if @review.save
      redirect_to cowork_path(@cowork)
    else
      render "coworks/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
end

end


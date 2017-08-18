class ReviewsController < ApplicationController

  def create
    @cowork = Corwork.find(params[:cowork_id])
    @review = Review.new(review_params)
    review.cowork = @cowork
    if @cowork.save
      redirect_to cowork_path(@cowork)
    else
      render "coworks/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
end

end


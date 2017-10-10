class ReviewsController < ApplicationController

  def create
    @cowork = Cowork.find(params[:cowork_id])
    @review = Review.new(review_params)
    @review.rating = review_params["rating"].to_i
    @review.cowork = @cowork
    @reviews = @cowork.reviews.select do |review|
      review.persisted?
    end
    if @review.save
      respond_to do |format|
        format.html {redirect_to cowork_path(@cowork)}
        format.js{}
      end
    else
      respond_to do |format|
        format.html {render "coworks/show"}
        format.js{}
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
end

end


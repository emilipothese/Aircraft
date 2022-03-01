class ReviewsController < ApplicationController
  def new
    # we need @spacecraft in our `simple_form_for`
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `spacecraft_id` to associate review with corresponding spacecraft
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
    @review.spacecraft = @spacecraft
    if @review.save
      redirect_to spacecraft_path(@spacecraft)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to spacecraft_path(@review.spacecraft)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

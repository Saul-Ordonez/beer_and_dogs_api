class ReviewsController < ApplicationController

  def index
    @establishment = Establishment.find(params[:establishment_id])
    @reviews = @establishment.reviews
    json_response(@reviews)
  end

  def show
      @establishment = Establishment.find(params[:establishment_id])
      @review = Review.find(params[:id])
      json_response(@review)
    end

    def create
      @establishment = Establishment.create!(establishment_params)
      @review = @establishment.review.new(review_params)
      json_response(@establishment, :created)
    end

    def update
      @review = Review.find(params[:id])
      if @review.update!(review_params)
        render status: 200, json: { message: "Review has been updated successfully."}
      end
    end

    def destroy
      @review = Review.find(params[:id])
      if @review.destroy!
        render status: 200, json: { message: "Review has been deleted successfully."}
      end
    end

  private
  def review_params
    params.permit(:name, :rating, :content_body)
  end
end

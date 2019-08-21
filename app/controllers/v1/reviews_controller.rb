class V1::ReviewsController < ApplicationController

  def index
    @destination = Destination.find(params[:destination_id])
    @reviews = @destination.reviews.all
    json_response(@reviews)
  end

  def show
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @review = @destination.reviews.create!(review_params)
    json_response(@review)
    render status: 200, json: {
     message: "This review has been created."
     }
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    @destination.reviews.update(review_params)
    render status: 200, json: {
     message: "This review has been updated successfully."
     }
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    @review.destroy
    render status: 200, json: {
     message: "This review has been destroyed."
     }
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def review_params
    params.permit(:author, :review, :rating)
  end
end

class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

  def show
    @destination = Destination.find(params[:id])
    json_response(@destination)
  end

  def create
    @destination = Destination.create(destination_params)
    json_response(@destination)
    render status: 200, json: {
     message: "This destination has been created."
     }
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    render status: 200, json: {
     message: "This destination has been updated successfully."
     }
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    render status: 200, json: {
     message: "This destination has been destroyed."
     }
  end

  private

  def destination_params
    params.permit(:name)
  end
end

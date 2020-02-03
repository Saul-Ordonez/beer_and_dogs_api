
class EstablishmentsController < ApplicationController


  def index
    @establishments = Establishment.all
    json_response(@establishments)
  end

  def show
    @establishment = Establishment.find(params[:id])
    json_response(@establishment)
  end

  def create
    @establishment = Establishment.create!(establishment_params)
    json_response(@establishment)
  end

  def update
    @establishment = Establishment.find(params[:id])
    if @establishment.update!(establishment_params)
      render status: 200, json: {
        message: "This establishment has been updated successfully."
      }
    end
  end

  def destroy
    @establishment = Establishment.find(params[:id])
    @establishment.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def establishment_params
    params.permit(:name, :address, :neighborhood, :website, :image, :establishment_type, :food, :restrictions, :kid_friendly, :rating, :latitude, :longitude)
  end
end

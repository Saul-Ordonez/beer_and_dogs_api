
class EstablishmentsController < ApplicationController

  def index
    if params[:query]
      @establishments = Establishment.search(params[:query])
      if @establishments.blank?
        render status: 200, json: {
          message: "No results found for #{params[:query]}."
        }
      else
        json_response(@establishments)
      end
    else
      @establishments = Establishment.all
      json_response(@establishments)
    end
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
        message: "#{@establishment.name} has been updated successfully."
      }
    end
  end

  def destroy
    @establishment = Establishment.find(params[:id])
    if @establishment.destroy
      render status: 200, json: {
        message: "#{@establishment.name} has been deleted successfully."
      }
    end
  end

  private

  def establishment_params
    params.permit(:name, :address, :neighborhood, :website, :image, :establishment_type, :food, :restrictions, :kid_friendly, :rating, :latitude, :longitude)
  end

end

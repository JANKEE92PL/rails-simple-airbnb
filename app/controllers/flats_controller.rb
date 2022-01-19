class FlatsController < ApplicationController
  # before_action :find_flat, only: [:new]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new()
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path(@flat)
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

class FlatsController < ApplicationController
  # before_action :find_flat, only: [:new]

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new()
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)

  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path(@flat)
  end

  def destroy_all
    @flat = Flat.all
    @flat.destroy_all
    redirect_to flats_path(@flat)
  end

  def seed
    Rails.application
    redirect_to flats_path(@flat)
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture)
  end
end

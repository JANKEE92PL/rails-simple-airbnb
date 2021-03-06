class FlatsController < ApplicationController
  # before_action :find_flat, only: [:new]

  def index
    if params[:query].present?
      @query = params[:query]
      @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
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
    Rails.application.load_seed
    redirect_to flats_path(@flat)
  end

  def move
    @flat = Flat.find(params[:id])
    @flat.insert_at(params[:position].to_i)
    head :ok
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture, :position)
  end
end

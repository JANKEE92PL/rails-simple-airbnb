class FlatsController < ApplicationController
  before_action :find_flat, only: [:new]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end


  private

  def find_flat
    @flat = Flat.find(params[:id])
  end
end

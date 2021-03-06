class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:new, :create]

  def index
    @flats = Flat.search(params[:term])
  end

  def navbar
    @flats = if params[:term]
      Flat.where('name LIKE ?', "%#{params[:term]}%")
    else
      Flat.all
    end
  end

  def show
    @markers = { lat: @flat.latitude, lng: @flat.longitude }
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user_id = current_user.id

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :amenties, :pictureUrl, :term, :user_id)
  end
end



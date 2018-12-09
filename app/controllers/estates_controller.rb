class EstatesController < ApplicationController
  before_action :set_estate, only: %i(show edit update destroy)

  def index
    @estates = Estate.all
  end

  def new
    @estate = Estate.new
    authorize @office
  end

  def create
    @estate = Estate.new(estate_params)
    @estate.user = current_user
    authorize @estate
    if @estate.save
      redirect_to @estate, notice: 'Your estate was successfully created'
    else
      render :new, alert: 'Unable to create your estate.'
    end
  end

  def show
  end

  def edit
  end

  def update
    @estate.update(estate_params)
    if @estate.update(estate_params)
      redirect_to estate_path(@estate)
    else
      render :edit
    end
  end

  def destroy
  end

  def set_estate
    @estate = Estate.find(params[:id])
  end

  def estate_params
    params.require(:estate).permit(:name, :street, :city, :description)
  end
end

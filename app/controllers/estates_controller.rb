class EstatesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_estate, only: %i[show edit update destroy]

  def index
    @estates = Estate.all
    @estates = policy_scope(@estates).order(created_at: :desc)
  end

  def new
    @estate = Estate.new
    authorize @estate
  end

  def create
    @estate = Estate.new(estate_params)
    @estate.user = current_user
    authorize @estate
    if @estate.save!
      redirect_to @estate, notice: 'Your estate was successfully created'
    else
      render :new, alert: 'Unable to create your estate.'
    end
  end

  def show
    authorize @estate
  end

  def edit
    authorize @estate
  end

  def update
    authorize @estate
    @estate.update(estate_params)
    if @estate.save
      redirect_to estate_path(@estate), notice: 'Estate was successfully created.'
    else
      render :edit, alert: 'Unable to create estate.'
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

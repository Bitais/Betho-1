class IncomesController < ApplicationController
  before_action :set_income, only: %i(show edit update destroy)

  def new
    @income = estate.Income.new
    authorize @income
  end

  def create
    @income = estate.incomes.new(income_params)
    authorize @income
    if @income.save
      redirect_to @income, notice: 'Your new income was successfully created'
    else
      render :new, alert: 'Unable to create your income.'
    end
  end

  private

  def set_estate
    @estate = Estate.find(params[:estate_id])
  end

  def set_booking
    @income = Income.find(params[:id])
  end

  def income_params
    params.require(:income).permit(:amount, :date, :description, :income_type, :category, :estate_id)
  end
end

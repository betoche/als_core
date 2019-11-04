class Api::V1::ExchangeRatesController < ApplicationController
  include ActionView::Helpers::NumberHelper
  before_action :set_exchange_rate, only: [:show, :update, :destroy]

  # GET /exchange_rates
  def index
    @exchange_rates = ExchangeRate.all

    render json: @exchange_rates
  end

  # GET /exchange_rates/1
  def show
    render json: @exchange_rate
  end

  # POST /exchange_rates
  def create
    @exchange_rate = ExchangeRate.new(exchange_rate_params)

    if @exchange_rate.save
      render json: @exchange_rate, status: :created, location: @exchange_rate
    else
      render json: @exchange_rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exchange_rates/1
  def update
    if @exchange_rate.update(exchange_rate_params)
      render json: @exchange_rate
    else
      render json: @exchange_rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exchange_rates/1
  def destroy
    @exchange_rate.destroy
  end

  def convert
    date = params[:date]
    amount = params[:amount].to_f
    currency_from = ExchangeRate.find_by(date: date, currency_id: params[:from_id])
    currency_to = ExchangeRate.find_by(date: date, currency_id: params[:to_id])

    rate = currency_to.rate / currency_from.rate

    converted_amount = amount * rate


    render json: {from: currency_from.currency.name, to: currency_to.currency.name, amount: number_with_precision(amount, :precision => 2), rate: number_with_precision(rate, :precision => 6), result: number_with_precision(converted_amount, :precision => 2)}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exchange_rate
      @exchange_rate = ExchangeRate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exchange_rate_params
      params.require(:exchange_rate).permit(:currency_id, :date, :rate, :from_id, :to_id)
    end
end

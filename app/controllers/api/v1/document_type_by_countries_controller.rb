class Api::V1::DocumentTypeByCountriesController < ApplicationController
  before_action :set_document_type_by_country, only: [:show, :update, :destroy]

  # GET /document_type_by_countries
  def index
    @document_type_by_countries = DocumentTypeByCountry.all

    render json: @document_type_by_countries
  end

  # GET /document_type_by_countries/1
  def show
    render json: @document_type_by_country
  end

  # POST /document_type_by_countries
  def create
    @document_type_by_country = DocumentTypeByCountry.new(document_type_by_country_params)

    if @document_type_by_country.save
      render json: @document_type_by_country, status: :created, location: @document_type_by_country
    else
      render json: @document_type_by_country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /document_type_by_countries/1
  def update
    if @document_type_by_country.update(document_type_by_country_params)
      render json: @document_type_by_country
    else
      render json: @document_type_by_country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /document_type_by_countries/1
  def destroy
    @document_type_by_country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_type_by_country
      @document_type_by_country = DocumentTypeByCountry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def document_type_by_country_params
      params.require(:document_type_by_country).permit(:country_id, :document_type_id, :name, :abbreviation, :local, :international, :number_length)
    end
end

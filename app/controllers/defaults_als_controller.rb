class DefaultsAlsController < ApplicationController
  before_action :set_defaults_al, only: [:show, :update, :destroy]

  # GET /defaults_als
  def index
    @defaults_als = DefaultsAls.all

    render json: @defaults_als
  end

  # GET /defaults_als/1
  def show
    render json: @defaults_al
  end

  # POST /defaults_als
  def create
    @defaults_al = DefaultsAls.new(defaults_al_params)

    if @defaults_al.save
      render json: @defaults_al, status: :created, location: @defaults_al
    else
      render json: @defaults_al.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /defaults_als/1
  def update
    if @defaults_al.update(defaults_al_params)
      render json: @defaults_al
    else
      render json: @defaults_al.errors, status: :unprocessable_entity
    end
  end

  # DELETE /defaults_als/1
  def destroy
    @defaults_al.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defaults_al
      @defaults_al = DefaultsAls.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defaults_al_params
      params.require(:defaults_al).permit(:country, :currency)
    end
end

class IndicesController < ApplicationController
  before_action :set_index, only: [:show, :update, :destroy]

  # GET /indices
  def index
    @indices = Index.all

    render json: @indices
  end

  # GET /indices/1
  def show
    render json: @index
  end

  # POST /indices
  def create
    @index = Index.new(index_params)

    if @index.save
      render json: @index, status: :created, location: @index
    else
      render json: @index.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /indices/1
  def update
    if @index.update(index_params)
      render json: @index
    else
      render json: @index.errors, status: :unprocessable_entity
    end
  end

  # DELETE /indices/1
  def destroy
    @index.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_index
      @index = Index.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def index_params
      params.fetch(:index, {})
    end
end

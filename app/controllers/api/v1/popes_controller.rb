class Api::V1::PopesController < ApplicationController
  def index
    popes = Pope.all
    render json: popes, status: 200
  end

  def create
    pope = Pope.new(
      birth_Name: prod_params[:birth_Name],
      papal_Name: prod_params[:papal_Name]
    )
    if pope.save
      render json: pope, status: 200
    else
      render json: {error: "fdf"}
    end
  end

  def show
    pope = Pope.find_by(id: param[:id])
    if pope
      render json: pope, status: 200
    else
      render json: {error: "fdfd"}
    end
  end
end

class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    byebug
    cheese = Cheese.find(params[:id])
    render json:cheese, except: [:updated_at, :created_at, :id]

  end

end

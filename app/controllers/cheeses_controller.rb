class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheese=Cheese.find_by(id: params[:id])
    if cheese
      render json: cheese, except:[:updated_at, :created_at]
    else
      render json:{error:"thie cheese could not be found enyway"}, status: :not_found
    end
  end



end

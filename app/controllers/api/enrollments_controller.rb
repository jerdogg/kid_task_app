class Api::EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    # binding.pry
    render json: current_user.enrollments
    # render json: Program.all
  end
  
  # private
  # def set_program
  # end

  private
  def set_coin
    @coin = Coin.find(params[:id])
  end

end

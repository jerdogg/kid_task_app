class Api::TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    # binding.pry
    render json: current_user.enrollments.where.not(program_id: nil)
    # render json: Program.all
  end
end

class MotelsController < ApplicationController
  def index
    @motels = Motels.all
  end
  
  def show
    @motel = @motels.select { |motel| motel.id == params[:id] }
  end
end

class RoomsController < ApplicationController
  def index
    @rooms = Room.find(:all, :params => {motel_id: params[:motel_id]})
  end

  def show
  end
end

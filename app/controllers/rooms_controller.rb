class RoomsController < ApplicationController

  before_action :set_user

  def index
    @rooms = Room.find(:all, :params => {motel_id: params[:motel_id]})
  end

  def show
  end

  private

  def set_user
    @user = current_user
  end
end

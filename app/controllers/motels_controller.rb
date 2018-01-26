class MotelsController < ApplicationController
  
  before_action :set_user
  
  def index
    # @motels = Motel.all
    @motel = Motel.all.select { |motel| motel.id == @user.motel_id }
  end
  
  def show
  end

  private

  def set_user
    @user = current_user
  end

end

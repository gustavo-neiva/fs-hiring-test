class AddForeingKeyToRooms < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :rooms, :motels
  end
end

class AddPlaneToPassengers < ActiveRecord::Migration[5.2]
  def change
    add_reference :passengers, :plane, foreign_key: true
  end
end

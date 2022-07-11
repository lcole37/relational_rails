class AddAirportToPlanes < ActiveRecord::Migration[5.2]
  def change
    add_reference :planes, :airport, foreign_key: true
  end
end

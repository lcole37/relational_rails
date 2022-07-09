class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.integer :gates
      t.boolean :international
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.integer :capacity
      t.string :destination
      t.boolean :boarded
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

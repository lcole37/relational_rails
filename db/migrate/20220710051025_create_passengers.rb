class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name
      t.integer :seat
      t.boolean :first_class
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

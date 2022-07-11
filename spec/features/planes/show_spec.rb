require 'rails_helper'

RSpec.describe 'the airports show page' do
  it "displays plane name" do
    airport = Airport.create(name: "Denver Airport", gates: 127, international: false)
    plane = airport.planes.create(capacity: 150, destination: "SRQ", boarded: true)
    visit "/parents/#{plane.id}"

    expect(page).to have_content(plane.name)
    # expect(page).to_not have_content(plane2.name)
  end

  it "displays the number of gates in the plane" do

  end

end

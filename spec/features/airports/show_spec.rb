require 'rails_helper'

RSpec.describe 'the airports show page' do
  it "displays airport name" do
    airport = Airport.create(name: "Denver Airport", gates: 127, international: true)
    airport2 = Airport.create(name: "Colorado Springs", gates: 12, international: false)
    # plane = airport.planes.create(capacity: 150, destination: "SRQ", boarded: true)
    visit "/parents/#{airport.id}"

    expect(page).to have_content(airport.name)
    expect(page).to_not have_content(airport2.name)
  end

  it "displays the number of gates in the airport" do

  end

end

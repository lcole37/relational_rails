require 'rails_helper'

RSpec.describe 'the airports show page' do
  before :each do
    @airport = Airport.create(name: "Denver Airport", gates: 127, international: true)
    @airport2 = Airport.create(name: "Colorado Springs", gates: 43, international: false)

    @plane = @airport.planes.create(capacity: 150, destination: "SRQ", boarded: true)
    @plane2 = @airport.planes.create(capacity: 220, destination: "ORD", boarded: false)
    @plane3 = @airport2.planes.create(capacity: 120, destination: "JFK", boarded: true)
  end
  it "displays plane capacity" do
    visit "/parents/#{plane.id}"

    expect(page).to have_content(@plane.capacity)
    expect(page).to_not have_content(@plane2.capacity)
  end
end

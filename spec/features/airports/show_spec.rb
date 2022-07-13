require 'rails_helper'

RSpec.describe 'the airports show page' do
  before :each do
    @airport = Airport.create(name: "Denver Airport", gates: 127, international: true)
    @airport2 = Airport.create(name: "Colorado Springs", gates: 43, international: false)
    # plane = @airport.planes.create(capacity: 150, destination: "SRQ", boarded: true)
  end
  it "displays airport name" do
    visit "/airports/#{@airport.id}"

    expect(page).to have_content(@airport.name)
    expect(page).to_not have_content(@airport2.name)
  end

  it "displays the number of gates in the airport" do
    visit "/airports/#{@airport.id}"

    expect(page).to have_content(@airport.gates)
    expect(page).to_not have_content(@airport2.gates)
  end

  it "displays if the airport is international" do
    visit "/airports/#{@airport.id}"

    expect(page).to have_content(@airport.international?)
    expect(page).to_not have_content(@airport2.international?)
  end
end

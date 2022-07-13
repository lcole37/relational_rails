require 'rails_helper'

RSpec.describe 'the passengers show page' do
  it "displays passenger name" do
    passenger = Passenger.create(name: "John", seat: 127, first_class: false)
    plane = Plane.create(capacity: 150, destination: "SRQ", boarded: true)
    visit "/parents/#{passenger.id}"

    expect(page).to have_content(passenger.name)
    expect(page).to_not have_content(passenger2.name)
  end

  it "displays the number of gates in the passenger" do

  end

end

require 'rails_helper'

RSpec.describe Plane, type: :model do
  it {should belong_to :airport}
end

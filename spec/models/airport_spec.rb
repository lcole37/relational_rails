require 'rails_helper'

RSpec.describe Airport do
  it {should have_many :planes}
end

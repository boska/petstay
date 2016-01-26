require 'rails_helper'

RSpec.describe "availabilities/show", type: :view do
  before(:each) do
    @availability = assign(:availability, Availability.create!(
      :price => 1.5,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end

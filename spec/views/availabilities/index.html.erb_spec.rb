require 'rails_helper'

RSpec.describe "availabilities/index", type: :view do
  before(:each) do
    assign(:availabilities, [
      Availability.create!(
        :price => 1.5,
        :user => nil
      ),
      Availability.create!(
        :price => 1.5,
        :user => nil
      )
    ])
  end

  it "renders a list of availabilities" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

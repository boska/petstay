require 'rails_helper'

RSpec.describe "availabilities/edit", type: :view do
  before(:each) do
    @availability = assign(:availability, Availability.create!(
      :price => 1.5,
      :user => nil
    ))
  end

  it "renders the edit availability form" do
    render

    assert_select "form[action=?][method=?]", availability_path(@availability), "post" do

      assert_select "input#availability_price[name=?]", "availability[price]"

      assert_select "input#availability_user_id[name=?]", "availability[user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :party_size => 2
      ),
      Reservation.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :party_size => 2
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

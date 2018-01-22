require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :party_size => 1
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_first_name[name=?]", "reservation[first_name]"

      assert_select "input#reservation_last_name[name=?]", "reservation[last_name]"

      assert_select "input#reservation_phone[name=?]", "reservation[phone]"

      assert_select "input#reservation_party_size[name=?]", "reservation[party_size]"
    end
  end
end

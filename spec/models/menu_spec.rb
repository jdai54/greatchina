require 'rails_helper'

RSpec.describe Menu, type: :model do
  let(:user) { User.create!(email: "example@example.com", password: "password") }
  let(:menu) { Menu.create!(title: "Lunch", user: user) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "has a title and user attributes" do
      expect(menu).to have_attributes(title: "Lunch", user: user)
    end
  end
end

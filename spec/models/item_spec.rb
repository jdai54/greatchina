require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: "example@example.com", password: "password") }
  let(:menu) { Menu.create!(title: "Lunch", user: user) }
  let(:item) { Item.create!(title: "Orange Chicken", description: "Chicken lightly battered and fried and coated in a sweet spicy sauce", price: 9.95, category: "Poultry", user: user)}

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:menu) }

  describe "attributes" do
    it "has a title, description, price, category, and user attributes" do
      expect(item).to have_attributes(title: "Orange Chicken", description: "Chicken lightly battered and fried and coated in a sweet spicy sauce", category: "Poultry", user: user, price: 9.95)
    end
  end
end

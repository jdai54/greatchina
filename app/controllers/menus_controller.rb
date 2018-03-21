class MenusController < ApplicationController
  def show
    @items = Item.all
    @appetizers = Item.where(category: "Appetizers").order(created_at: :asc)
    @soups = Item.where(category: "Soups").order(created_at: :asc)
    @seafood = Item.where(category: "Seafood").order(created_at: :asc)
    @pork = Item.where(category: "Pork").order(created_at: :asc)
    @lamb = Item.where(category: "Lamb").order(created_at: :asc)
    @beef = Item.where(category: "Beef").order(created_at: :asc)
    @poultry = Item.where(category: "Poultry").order(created_at: :asc)
    @vegetables = Item.where(category: "Vegetables").order(created_at: :asc)
    @soft_noodles = Item.where(category: "Soft Noodles").order(created_at: :asc)
    @fried_rice = Item.where(category: "Fried Rice").order(created_at: :asc)
    @egg_foo_young = Item.where(category: "Egg Foo Young").order(created_at: :asc)
    @chop_suey = Item.where(category: "Chop Suey").order(created_at: :asc)
    @chow_mein = Item.where(category: "Chow Mein").order(created_at: :asc)
    @rice_bowls = Item.where(category: "Rice Bowls").order(created_at: :asc)
    @specialties = Item.where(category: "Specialties").order(created_at: :asc)
    @lunch = Item.where(category: "Lunch").order(created_at: :asc)
  end
end

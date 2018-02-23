class MenusController < ApplicationController
  def show
    @items = Item.all
    @appetizers = Item.where(category: "Appetizers")
    @soups = Item.where(category: "Soups")
    @seafood = Item.where(category: "Seafood")
    @lamb = Item.where(category: "Lamb")
    @beef = Item.where(category: "Beef")
    @poultry = Item.where(category: "Poultry")
    @vegetables = Item.where(category: "Vegetables")
    @soft_noodles = Item.where(category: "Soft Noodles")
    @fried_rice = Item.where(category: "Fried Rice")
    @egg_foo_young = Item.where(category: "Egg Foo Young")
    @chop_suey = Item.where(category: "Chop Suey")
    @chow_mein = Item.where(category: "Chow Mein")
    @rice_bowls = Item.where(category: "Rice Bowls")
    @specialties = Item.where(category: "Specialties")
    @lunch = Item.where(category: "Lunch")
  end
end

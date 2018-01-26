class MenusController < ApplicationController
  def show
    @items = Item.all
  end
end

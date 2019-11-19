class Admin::RestaurantsController < ApplicationController
  def index
    # Ideally, we would get restaurants belonging to current user
    # @restaurants = current_user.restaurants
    # For now, we'll fake it.
    @restaurants = Restaurant.all
  end
end

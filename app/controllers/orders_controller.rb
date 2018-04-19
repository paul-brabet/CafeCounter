class OrdersController < ApplicationController
  def create
    # Make a post request
    puts 'here'
    HTTParty.post("http://localhost:5000/menu_items")
    redirect_to pages_path
  end
end

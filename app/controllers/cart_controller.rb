class CartController < ApplicationController
  
  def index
    @order_list = session[:cart]
    @cart = []

    @order_list.each do |item|
      get_items = Get_menu_item.new
      retrieved_item = get_items.get_request (item["id"])
      retrieved_item["number"] = item["number"]
      @cart.push(retrieved_item)
    end
  end

end

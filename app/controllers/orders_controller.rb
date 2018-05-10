class OrdersController < ApplicationController
  
  def index
    get_menu = Get_menu.new
    @menu = get_menu.get_request
  end

  def create
    existing_item = session[:cart].select { |item| item["id"] == params[:item_id] }
    if existing_item != []
      existing_item[0]["number"] += 1
    else   
      session[:cart].push({
        "id" => params[:item_id],
        "number" => 1
      })
    end
    puts session[:cart]
  end

end
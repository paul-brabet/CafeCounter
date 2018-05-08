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

  def create
    @order_list = session[:cart]
    @cart = []

    @order_list.each do |item|
      get_items = Get_menu_item.new
      retrieved_item = get_items.get_request (item["id"])
      retrieved_item["number"] = item["number"]
      @cart.push(retrieved_item)
    end

    # Saves order to database
    @orders = Order.new()
    @orders.status = "Order sent to kitchen"
    @orders.save

    # Shapes order data for post request
    shape_data = Shape_data.new
    options = shape_data.shape(@cart, @orders.id)

    # Posts order to kitchen
    submit_order = Submit_order.new
    @result = submit_order.post(options)
    
    # Handle post response
    if @result.code == 200 
      render({:plain => "Order successfully made to the kitchen"})
    else 
      render({:plain => "Uh-oh. Something went wrong! Order was not completed. Check if there is enough supply to make the order"})
    end
  end


end

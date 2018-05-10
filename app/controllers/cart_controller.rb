class CartController < ApplicationController
  
  def index
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])
  end

  def create
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])

    # Creates new order for db
    @order = Order.new()
    @order.status = "Order sent to kitchen"
    @order.save

    # Saves order items to database
    @cart.each do |order_item|
      @order_item = @order.order_items.build
      @order_item.kitchen_id = order_item["id"]
      @order_item.name = order_item["name"]
      @order_item.number = order_item["number"]
      @order_item.save
    end

    # Shapes order data for post request
    shape_data = Shape_data.new
    options = shape_data.shape(@cart, @order.id)

    # Posts order to kitchen
    submit_order = Submit_order.new
    @result = submit_order.post(options)
    
    # Handle post response
    if @result.code == 200 
      render({:plain => "Order successfully made to the kitchen"})
    elsif
      @result.code == 422
      render({:plain => "Uh-oh. Something went wrong! You likely ordered more than is available. Your request was not completed."})      
    else 
      render({:plain => "Uh-oh. Something went wrong! Order was not completed. The error code is " + @result.code})
    end
  end

end

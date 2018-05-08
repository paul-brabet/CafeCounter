class CartController < ApplicationController
  
  def index
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])
  end

  def create
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])

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

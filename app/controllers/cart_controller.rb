class CartController < ApplicationController
  
  def index
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])
  end

  def create
    build_cart = Build_cart.new
    @cart = build_cart.build(session[:cart])

    # Saves order to database
    @order = Order.new()
    @order.status = "Order sent to kitchen"
    @order.save

    # Saves order items to database
    @cart.each do |order_item|
      @order_item = @order.order_items.build
      # @order_item = OrderItem.new()
      @order_item.kitchen_id = order_item["id"]
      @order_item.name = order_item["name"]
      @order_item.number = order_item["number"]
      # @order_item.order = @orders.id
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
    else 
      render({:plain => "Uh-oh. Something went wrong! Order was not completed. Check if there is enough supply to make the order"})
    end
  end

end

class MoreItemsController < ApplicationController
  
  def index
    get_menu = Get_menu.new
    @menu = get_menu.get_next_page(params["next_url"])
  end

  def create
    # Saves order to database
    @orders = Order.new()
    @orders.status = "Order sent to kitchen"
    @orders.save

    # Shapes order data for post request
    options = shape(params["orders"], @orders.id.to_s)

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



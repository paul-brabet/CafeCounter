class MoreItemsController < ApplicationController
  
  # def shape(data, order_id)
  #   order_list = remove_redundant_properties(data)
  #   options = format_for_post_payload(order_list, order_id)
  #   return options
  # end

  # def remove_redundant_properties(data)
  #   # Delete Href key/value pairings that are connected to an order number of nil
  #   order_list = data.delete_if {|key, value|
  #     meal = key.delete_prefix("Href for ")
  #     data["Number of " + meal] == ""
  #   }
  #   # Delete keys and values that refer to an order number of nil
  #   order_list = order_list.delete_if {|key, value| value == "" }

  #   return order_list
  # end

  # def format_for_post_payload(order_list, order_id)
  #   components = []
  #   # Change key names and put orders with their matching href in a their own hash, inside of the components array
  #   order_list.each {|key, value|
  #     if key.match?("Href for ")
  #       meal = key.delete_prefix("Href for ")
  #       if order_list["Number of " + meal]
  #         components.push({
  #           "href" => value,
  #           "quantity" => order_list["Number of " + meal].to_i
  #         })
  #       end 
  #     end
  #   }
  
  #   body = {
  #     "kind": "job",
  #     "idempotency_key": order_id,
  #     "components": components
  #   }
  
  #   options = {
  #     headers: {'Content-Type'=>'application/json'},
  #     body: body.to_json
  #   }
  #   return options
  # end
  
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



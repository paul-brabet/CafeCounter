class OrdersController < ApplicationController
  
  def index
    @@hey_kitchen = CallKitchen.new
    @menu = @@hey_kitchen.see_menu.parsed_response["menu_items"]
  end

  def create
    # Saves order to database
    @orders = Order.new()
    @orders.status = "Order sent to kitchen"
    @orders.save

    # Shapes order data for post request
    order_list = params["orders"]

    order_list = order_list.delete_if {|key, value|
      meal = key.delete_prefix("Href for ")
      order_list["Number of " + meal] == ""
    }

    order_list = order_list.delete_if {|key, value| value == "" }

    components = []
    order_list.each {|key, value|
      if key.match?("Href for ")
        meal = key.delete_prefix("Href for ")
        if order_list["Number of " + meal]
          components.push({
            "href" => value,
            "quantity" => order_list["Number of " + meal].to_i
          })
        end 
      end
    }

    body = {
      "kind": "job",
      "idempotency_key": @orders.id.to_s,
      "components": components
    }

    options = {
      headers: {'Content-Type'=>'application/json'},
      body: body.to_json
    }

    # Posts order to kitchen
    @result = @@hey_kitchen.submit_order(options)

    # Handle post response
    if @result.code == 200 
      render({:plain => "Order successfully made to the kitchen"})
    else 
      render({:plain => "Uh-oh. Something went wrong! Order was not completed. Check if there is enough supply to make the order"})
    end
  end

end

class CallKitchen
  include HTTParty
  base_uri "http://localhost:5000/"

  def initialize
  end
  
  def see_menu
    @options = {query: {
      "page[size]" => 20
    }}
    self.class.get("/menu_items", @options)
  end

  def submit_order(options)
    self.class.post('/jobs', options)
  end

end
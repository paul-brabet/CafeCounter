class Shape_data
  
  def shape (cart, order_id)
    components = []

    cart.each do |item|
      components.push(
        {
          "href": item["_links"]["self"]["href"],
          "quantity": item["number"]
        }
      )
    end

    payload = {
      "kind" => "job",
      "idempotency_key" => order_id.to_s,
      "components" => components
    }

    options = {
      headers: {'Content-Type'=>'application/json'},
      body: payload.to_json
    }

    return options
  end

end
class Get_menu
  
  include HTTParty
  base_uri "http://localhost:5000/"

  def get_request
    options = {query: {
      "page[size]" => 20
    }}

    self.class.get("/menu_items", options)
  end

end
class Get_menu
  
  include HTTParty
  base_uri "http://localhost:5000/"

  def get_request
    options = {query: {
      "page[size]" => 10
    }}

    @response = self.class.get("/menu_items", options)
    @response = @response.parsed_response
  end

  def get_next_page(href)
    self.class.get(href)
  end

end
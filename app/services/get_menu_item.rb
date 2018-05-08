class Get_menu_item

  include HTTParty
  base_uri "http://localhost:5000/"

  def get_request (id)
    @response = self.class.get("/menu_items/" + id)
    @response = @response.parsed_response
  end

end

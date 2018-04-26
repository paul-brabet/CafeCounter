# require "HTTParty"

class PagesController < ApplicationController
  @@kitchen = HTTParty.get("http://localhost:5000/menu_items")

  def index
    @menu = @@kitchen.parsed_response["menu_items"]
  end

end

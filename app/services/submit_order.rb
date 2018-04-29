class Submit_order
    
  include HTTParty
  base_uri "http://localhost:5000/"
  
  def post(options)
    self.class.post('/jobs', options)
  end

end

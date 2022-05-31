class FoodsService
  def self.get_foods
    list = "/fdc/v1/foods/search"
    response = conn.get(list) do |faraday|
      faraday.params['api_key'] = ENV[:api_key]
    end
  end

  def self.conn
    Faraday.new(
    url: 'https://api.nal.usda.gov'
  )
  end


#
#   response = conn.post('/post') do |req|
#   req.params['limit'] = 100
#   req.body = {query: 'chunky bacon'}.to_json
#   end
end

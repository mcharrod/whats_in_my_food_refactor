class FoodsService
  def self.get_foods(query)
    list = "/fdc/v1/foods/search"
    response = conn.get(list) do |faraday|
      faraday.params['api_key'] = ENV['api_key']
      faraday.params['query'] = query
      faraday.params['dataType'] = 'Branded'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(
    url: 'https://api.nal.usda.gov'
  )
  end
# "/fdc/v1/foods/search?query=apple&pageSize=2&"

#
#   response = conn.post('/post') do |req|
#   req.params['limit'] = 100
#   req.body = {query: 'chunky bacon'}.to_json
#   end
end

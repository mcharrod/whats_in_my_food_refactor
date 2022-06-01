class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.search_foods(params[:q])
    @results_count = FoodsFacade.results_count(params[:q])
  end
end

# api consumption

# 1. create  a service
# - set up a connection
# - make a request
# - parse the JSON string into a hash like object

# 2. set up PORO
# - def initialize
# - attr _ reader
# - grab the attributes from the hash

# 3. set up facade
# - convert JSON objects into POROS.

class Food
  attr_reader :upc,
              :brand,
              :description,
              :ingredients
  def initialize(food_data)
    @upc = food_data[:gtinUpc]
    @brand = food_data[:brandOwner]
    @description = food_data[:description]
    @ingredients = food_data[:ingredients]
  end
end

class FoodsFacade
  def self.search_foods(search_query)
    food_list = FoodsService.get_foods(search_query)

    food_list[:foods][0..9].map do |food|
      Food.new(food)
    end
  end

  def self.results_count(search_query)
    FoodsService.get_foods(search_query)[:totalHits]
  end
end

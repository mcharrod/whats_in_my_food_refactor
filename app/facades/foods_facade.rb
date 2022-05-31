class FoodsFacade
  def self.search_foods
    food_list = FoodsService.get_foods

    food_list[:foods].map do |food|
      Food.new(food)
    end
  end
end

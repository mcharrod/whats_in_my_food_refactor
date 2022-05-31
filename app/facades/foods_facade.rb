class FoodsFacade
  def self.search_foods
    FoodsService.get_foods
  end
end

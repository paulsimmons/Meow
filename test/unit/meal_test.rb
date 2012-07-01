require 'test_helper'

class MealTest < ActiveSupport::TestCase
  
  test "meal attributes must not be empty" do
    meal = Meal.new
    assert meal.invalid?
    assert meal.errors[:name].any?
    assert meal.errors[:date].any?
    assert meal.errors[:instructions].any?
    assert meal.errors[:owner].any?
    assert meal.errors[:restaurant].any?
    assert meal.errors[:menuurl].any?
  end
  
  
end

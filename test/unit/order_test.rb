require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "order attributes must not be empty" do
    order = Order.new
    assert order.valid?
    assert order.errors[:description].any?
    assert order.errors[:owner].any?
  end

end

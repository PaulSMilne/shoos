require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/order'

class TestShoe < MiniTest::Test

  def setup
    options = {
      "name" => "Jim Doe",
      "address" => "123 fake st",
      "quantity" => "9",
      "size" => "10"     
    }
    @order = Order.new(options)
  end

  def test_name
    assert_equal("Jim Doe", @order.name)
  end






end
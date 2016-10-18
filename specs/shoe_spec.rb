require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/shoe'

class TestShoe < MiniTest::Test

  def setup
    options = {
      "name" => "Jim Doe",
      "address" => "123 fake st",
      "quantity" => "9",
      "size" => "10"     
    }
    @shoe = Shoe.new(options)
  end

  def test_name
    assert_equal("Jim Doe", @shoe.name)
  end






end
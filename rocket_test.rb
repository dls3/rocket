require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_new_name
    # @rocket = Rocket.new
    @rocket.name = "apollo"
    assert @rocket.name == "apollo"
  end

  def test_new_colour
    # @rocket = Rocket.new
    @rocket.colour = "blue"
    assert @rocket.colour == "blue"
  end

end

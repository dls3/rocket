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

  def test_flying_false
    # @rocket = Rocket.new(flying: false)
    assert @rocket.flying? == false
  end

  def test_flying_true
    @rocket = Rocket.new(flying: true)
    assert @rocket.flying? == true
  end

  def test_lift_off_while_flying
    @rocket.lift_off
    assert @rocket.lift_off == false
  end

  def test_lift_off_while_not_flying
    assert @rocket.lift_off == true
  end

  def test_land_while_flying
    @rocket.lift_off
    assert @rocket.land == true
  end

  def test_land_while_flying_grounds_rocket
    @rocket = Rocket.new(flying: true)
    @rocket.land
    assert @rocket.flying? == false
  end

  def test_land_while_not_flying
    assert @rocket.land == false
  end

  def test_status_while_flying
    name = @rocket.name
    @rocket.lift_off
    assert_equal @rocket.status, "Rocket #{name} is flying through the sky!"
  end

  def test_status_while_not_flying
    name = @rocket.name
    assert_equal @rocket.status, "Rocket #{name} is ready for lift off!"
  end

end

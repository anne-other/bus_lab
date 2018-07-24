require('minitest/autorun')
require('minitest/rg')

require_relative('../bus')
require_relative('../person')


class BusTest < MiniTest::Test

  def setup()
    @robbie = Person.new("Red", "27")
    @example_bus = Bus.new("77", "Airport")
  end

  def test_can_drive()
    assert_equal("Brum Brum", @example_bus.drive())
  end

  def test_count_passengers()
    assert_equal(0, @example_bus.count_passengers)
  end

  def test_pick_up()
    @example_bus.pick_up(@robbie)
    assert_equal(1, @example_bus.count_passengers)
  end

  def test_drop_off()
    @example_bus.pick_up(@robbie)
    @example_bus.drop_off(@robbie)
    assert_equal(0, @example_bus.count_passengers)
  end

  def test_empty_bus()
    steve = Person.new("Steve", "30")
    @example_bus.pick_up(@robbie)
    @example_bus.pick_up(steve)
    @example_bus.empty_bus
    assert_equal(0, @example_bus.count_passengers)
  end


end

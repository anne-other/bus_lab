require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../bus')
require_relative('../person')

class BusStopTest < MiniTest::Test

  def setup
    @richard = Person.new("Richard", "29")
    @robbie = Person.new("Robbie", "27")
    @steve = Person.new("Steve", "30")
    @example_bus_stop = BusStop.new("Hospital Stop")
  end

  def test_queue_length()
    assert_equal(0, @example_bus_stop.queue_length)
  end

  def test_add_person()
    @example_bus_stop.add_person(@richard)
    assert_equal(1, @example_bus_stop.queue_length)
  end

  def test_pick_up_from_stop
    
  end

end

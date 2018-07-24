class Bus

def initialize(route, destination)
  @route = route
  @destination = destination
  @passengers = []
end

def drive()
  return "Brum Brum"
end

def count_passengers
  return @passengers.size
end

def pick_up(passenger)
  @passengers << passenger
end

def drop_off(passenger)
  @passengers.delete(passenger)
end

def empty_bus()
  @passengers.clear
end

end

class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_length
    return @queue.count
  end

  def add_person(person)
    @queue.push(person)

  end

end

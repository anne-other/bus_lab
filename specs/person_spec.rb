require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test


  def setup
    @example_person = Person.new("Richard", "29")
  end

end

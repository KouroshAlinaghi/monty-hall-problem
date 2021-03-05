class Door
  attr_reader :has_car

  def initialize(has_car)
    @has_car = has_car
  end
end

@chosen, @third = 0, 0

10000.times do
  doors = [
    Door.new(true),
    Door.new(false),
    Door.new(false)
  ]

  chosen_door = doors[rand(3)]
  showed_door = doors.select {|c| c!=chosen_door and !(c.has_car) }[rand(2)]
  third_door = doors.select {|c| c!=chosen_door and c!=showed_door }

  if chosen_door.has_car
    @chosen += 1
  else
    @third += 1
  end

end

  puts """
    chosen: #{@chosen/100}%
    third: #{@third/100}%
  """

require_relative "./rover"
require_relative "./location"
require_relative "./directions"

begin
  land = ARGF.gets
  land_splitted = land.split[0, 2]
  location = Location.new(land_splitted[0].to_i, land_splitted[1].to_i)

  rover_position = ARGF.gets
  position = rover_position.split[0, 2]
  direction = rover_position.split[2, 3][0]
  rover = Rover.new(position, direction)
  commands = ARGF.gets

  direction = Directions.new.move(rover, location, commands)
  puts rover.coordinates
  puts "=========="
rescue
  puts "Data is invalid!"
end

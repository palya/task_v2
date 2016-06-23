class Directions
  ROTATE_MAPPING = {
    "NL" => "W", "NR" => "E", "EL" => "N", "ER" => "S",
    "SL" => "E", "SR" => "W", "WL" => "S", "WR" => "N"
  }

  def move(rover, location, commands)
    commands.split('').each do |command|
      command = command.upcase
      if command == "L" or command == "R"
        rover.direction = rotate(rover.direction, command)
      elsif command == "M"
         rover.position = forward(rover.position, rover.direction, location)
      end
    end
  end

  def forward(position, direction, location)
    x = position[0].to_i
    y = position[1].to_i
    x_new = x
    y_new = y

    case direction
      when "N" then y_new = y + 1
      when "S" then y_new = x - 1
      when "E" then x_new = x + 1
      when "W" then x_new = x - 1
    end

    if location.allowed_to_move?(x_new, y_new)
      return x_new, y_new
    else
      puts "Robot can't move outside to #{x_new}, #{y_new}!"
      return x, y
    end
  end

  def rotate(rover_dir, move_dir)
    ROTATE_MAPPING["#{rover_dir}#{move_dir}"]
  end
end

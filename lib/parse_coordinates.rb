class ParseCoordinates
  def initialize(map)
    @map_lines = map.split("\n")
  end

  def get_position
    x = 0
    y = 0

    @map_lines.shift

    @map_lines.each_with_index do |line, index|
      if line.include?("X")
        x = (line.index("X") - 1)
        y = -index
      end
    end

    [x, y]
  end
end
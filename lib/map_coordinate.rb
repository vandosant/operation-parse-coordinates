class MapCoordinate
  def initialize(map)
    @map = map
  end

  def parse
    map_lines = @map.lines("\n")

    result = []

    y_count = 0
    map_lines.each do |line|
      if line.include?('X')
        result << line[/[*]+X/].count("*")
      end

      y_count += 1
    end
    result << (y_count - 3)

    result
  end
end
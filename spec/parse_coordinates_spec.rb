require 'spec_helper'
require_relative '../lib/parse_coordinates'

describe ParseCoordinates do
  it 'recognizes an x coordinate' do
    map = <<-INPUT.chomp
+==+
|*X|
+==+
    INPUT

    coordinate = ParseCoordinates.new(map)

    actual = coordinate.get_position

    expect(actual).to eq [1, 0]
  end

  it 'recognizes a y coordinate' do
    map = <<-INPUT.chomp
+==+
|**|
|*X|
+==+
    INPUT

    coordinate = ParseCoordinates.new(map)

    actual = coordinate.get_position

    expect(actual).to eq [1, -1]
  end
end
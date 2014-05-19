require 'spec_helper'
require_relative '../lib/map_coordinate'

describe MapCoordinate do
  it 'identifies a coordinate' do
    input = <<-INPUT
+==+
|*X|
+==+
    INPUT

    mapper = MapCoordinate.new(input)
    actual = mapper.parse

    expected = [1, 0]

    expect(actual).to eq expected
  end
end
class Triangle
  attr_reader :sides
  
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3].sort
  end

  def kind
    if sides[2] >= sides[1] + sides[0] || sides[0] <= 0
      begin
        raise TriangleError
      end
    else
      [nil, :equilateral, :isosceles, :scalene][sides.uniq.size]
    end
  end

  class TriangleError < StandardError
    def message
      "Fake triangle! Sad!"
    end
  end
end
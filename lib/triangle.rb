class Triangle
  attr_reader :sides
  
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3].sort
  end

  def kind
    if sides[2] >= sides[1] + sides[0] || sides.any? {|side| side <= 0}
      begin
        raise TriangleError
      end
    else
      [:scalene, nil,:isosceles, :equilateral][sides.count {|side| sides.count(side) > 1}]
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle."
    end
  end
end
class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [a, b, c].sort
    if sides.sum <= 0 || sides[2] >= sides[1] + sides[0]
      raise TriangleError
    elsif sides.uniq.count  == 1
      return :equilateral
    elsif sides.uniq.count  == 2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end

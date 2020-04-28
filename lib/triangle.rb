require 'pry'
class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def kind
    
    valid_triangle?
    if a == b && a == c
      return :equilateral
    elsif a == b || b == c || c == a 
      return :isosceles
    else 
      return :scalene
    end
  end

  def valid_triangle?
    triangle_equality = a + b > c && a + c > b && b + c > a  
    
    valid_sides = [a, b, c].all?{|n| n > 0}
    
    if !triangle_equality || !valid_sides
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end



class Triangle
  # write code here
  attr_accessor :x, :y, :z,
  :equilateral, :isosceles, :scalene

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x == 0 || y == 0 || z == 0
      raise TriangleError
    elsif x + y <= z || x + z <= y || y + z <= x
      raise TriangleError
    elsif x == y && y == z
      kind = :equilateral
    elsif x == y && x != z || y == z && y != x || x == z && x != y
      kind = :isosceles
    else
      kind = :scalene
    end
  end
  class TriangleError < StandardError
  end
end
################################
# require 'pry'
# class Triangle
#   attr_reader :side_1, :side_2, :side_3

#   def initialize(side_1, side_2, side_3)
#     @triangle_sides = []
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#     @triangle_sides << side_1
#     @triangle_sides << side_2
#     @triangle_sides << side_3
#   end

#   def valid?
#     sum_one_two = @triangle_sides[0] + @triangle_sides[1]
#     sum_one_three = @triangle_sides[0] + @triangle_sides[2]
#     sum_two_three = @triangle_sides[1] + @triangle_sides[2]

#     if sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0]
#       return true
#     else
#       return false
#     end
#   end

#   def valid_sides
#     new_triangle = Triangle.new(side_1, side_2, side_3)
#     sum = new_triangle.side_1 + new_triangle.side_2 + new_triangle.side_3
#     if sum == 0
#       return true
#     end
#   end

#   def kind
#     if valid?
#       if @triangle_sides.uniq.length == 1
#         return :equilateral
#       elsif @triangle_sides.uniq.length == 2
#         return :isosceles
#       elsif valid_sides
#         raise TriangleError
#       else
#         return :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end
# end

# class TriangleError < StandardError

# end










#####################################
# class Person
#   attr_accessor :partner, :name

#   def initialize(name)
#     @name = name
#   end

#   def get_married(person)

#     self.partner = person
#     if person.class != Person
#       begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end

#   end
#   class PartnerError < StandardError
#     def message
#       "you must give the get_married method an argument of an instance of the person class!"
#     end  
#   end

# end

# beyonce = Person.new("Beyonce")
# beyonce.get_married("Jay-Z")
# puts beyonce.name

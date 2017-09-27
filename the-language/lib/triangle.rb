# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

# def triangle(a, b, c)
#   a, b, c = sides = [a, b, c].sort
#   raise Exception unless a > 0 and a + b > c
#   [nil, :equilateral, :isosceles, :scalene][sides.uniq.size]
# end


def triangle(a, b, c)
  a, b, c = sides = [a, b, c].sort
  raise TriangleError unless a > 0 and a + b > c
  [:scalene, :isosceles, :equilateral][-sides.uniq.size]
end

# def triangle(a, b, c)
#
#   unless b + c > a && a + b > c && c + a > b
#     raise TriangleError
#   end
#   if a <= 0 || b <= 0 || c <= 0 || ok <= 0 then
#     raise TriangleError
#   end
#
#   if a == b && b == c && c == a
#     :equilateral
#   elsif a == b || b == c || c == a
#     :isosceles
#   else
#     :scalene
#   end
# end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

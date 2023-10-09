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
def triangle(a, b, c)
  # WRITE THIS CODE
  # catch invalid triangle lengths/sides
  if (a <= 0) | (b <= 0) | (c <= 0)
    raise TriangleError, "Must have positive real side lengths"
  end

  x, y, z = [a,b,c].sort
  if (x + y) <= z
    raise TriangleError, "Violation of the triangle inequality"
  end
  
  if (a == b) & (b == c)
    return :equilateral
  end

  if (a == b) | (b == c) | (a == c)
    return :isosceles
  end

  # no sides equal
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

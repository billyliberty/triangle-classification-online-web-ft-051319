class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @sides = []
  end

  def kind
    if a == b && a == c && b == c
      return :equilateral
    elsif a != b && a != c && b != c
      return :scalene
    elsif a == b || a == c || b == c
      return :isosceles
    elsif valid? == false || negative? == true
      raise TriangleError
    end
  end

  def negative?
    if a <= 0 || b <= 0 || c <= 0
      return false
    else
      return true
    end
  end



  class TriangleError < StandardError
  end
end

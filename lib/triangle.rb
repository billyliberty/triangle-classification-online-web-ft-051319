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
    a.positive? && b.positive? && c.positive?
  end



  class TriangleError < StandardError
  end
end

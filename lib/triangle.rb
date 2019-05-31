class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @sides = []
  end

  def valid?
    positive = [@a, @b, @c].all? {|side| side > 0}
    positive && (@a+@b > @c) && (@a+@c > @b) && (@b+@c > @a)
  end

  def kind
    if a == b && a == c && b == c
      return :equilateral
    elsif a != b && a != c && b != c
      return :scalene
    elsif a == b || a == c || b == c
      return :isosceles
    elsif !valid?
      raise TriangleError
    end
  end





  class TriangleError < StandardError
  end
end

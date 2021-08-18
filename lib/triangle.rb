class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c  
    @sides = [a, b, c]
  end

  def kind
    if !valid_triangle?
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral 
    elsif @a == @b || @b == @c || @a == @c 
    :isosceles
    else
    :scalene
    end
  end

  def valid_triangle?
    if @sides.any? { |side| side <= 0 } 
      false
    elsif @b + @c > @a && @a + @c > @b && @a + @b > @c
      true
# 1 + 3 > 1 && 1 + 3 > 1 && 1 +1 > 3
        
    else
      false
    end
  end

  class TriangleError < StandardError
    
  end

end

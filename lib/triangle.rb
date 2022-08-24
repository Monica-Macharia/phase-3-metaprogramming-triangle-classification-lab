class Triangle
 attr_reader :base, :height, :hypotenuse

 def initialize(base, height, hypotenuse)
  @base = base
  @height = height
  @hypotenuse = hypotenuse
 end
 def kind
     valid
  if base == height &&  height == hypotenuse
    :equilateral
 
    elsif base == height || height == hypotenuse || base == hypotenuse
      :isosceles
 
    else 
      :scalene
    end
 end 
  def zero_mark
    [base, height, hypotenuse].all?(&:positive)
  end
  def inequality
    base + height> hypotenuse && base + hypotenuse > height && height + hypotenuse > base
  end
  def valid
    raise TriangleError
    unless zero_mark && inequality
  end
  
  class TriangleError < StandardError
  end
end

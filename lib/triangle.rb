class Triangle

attr_accessor :length1, :length2, :length3

def initialize(length1, length2, length3)
  @length1 = length1
  @length2 = length2
  @length3 = length3
end

def kind
  if @length1 = 0 || @length2 = 0 || @length3 = 0 || (@length1 + @length2) > @length3 || (@length2 + @length3) > @length1 || (@length1 + @length3) > @length2
    raise TriangleError
  rescue TraingleError => error
    puts error.message
  elsif @length1 == @length2 == @length3
    return :equilateral
  elsif @length1 == @length2 || @length1 == @length3 || @length 2 == @length3
    return :isosceles
  else return :scalene
  end
end

class TraingleError < StandardError
  def message "error message"
  end
end

end

class Triangle
  # write code here
  attr_accessor :x, :y, :z
  def initialize(x, y, z) # (attributes)
    # attributes.each {|key, value|
    #   self.class.attr_accessor(key)
    #   self.send("#{key}=", value)
    # }
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x > 0 && y > 0 && z > 0 && x + y > z && y + z > x && z + x > y
      if x == y && y == z
        :equilateral
      elsif x == y || y == z || z == x
        :isosceles
      elsif x!=y && y != z && z != x
        :scalene
      else
        :triangle
      end
    else
      begin
        raise TriangleError
      # rescue PartnerError => error
      #   puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Not a triangle"
    end
  end
end

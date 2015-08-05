
class Rectangle

  def initialize(width, length)
    @width  = width
    @length = length
  end

  def area
  	@width * @length
  end

  def perimeter
  	@width * 2 + @length * 2
  end

  def diagonal
  	diag_squared = @width**2 + @length**2
  	Math.sqrt(diag_squared)
  end

  def square?
  	@width == @length
  end

end


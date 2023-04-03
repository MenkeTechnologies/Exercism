class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary = 0)
    @real = real
    @imaginary = imaginary
  end

  def ==(other) = other.is_a?(ComplexNumber) ? real == other.real && imaginary == other.imaginary : false

  def +(other) = ComplexNumber.new(real + other.real, imaginary + other.imaginary)

  def -(other) = ComplexNumber.new(real - other.real, imaginary - other.imaginary)

  def *(other) = ComplexNumber.new(real * other.real - imaginary * other.imaginary, imaginary * other.real + real * other.imaginary)

  def /(other)
    res_real = (real * other.real + imaginary * other.imaginary) / (other.real.pow(2) + other.imaginary.pow(2)).to_f
    res_imaginary = (imaginary * other.real - real * other.imaginary) / (other.real.pow(2) + other.imaginary.pow(2)).to_f
    ComplexNumber.new(res_real, res_imaginary)
  end

  def abs = Math.sqrt(real.pow(2) + imaginary.pow(2))

  def conjugate = ComplexNumber.new(real, -imaginary)

  def exp
    ComplexNumber.new((Math::E ** real * Math::cos(imaginary)).round(15), (Math::E ** real * Math::sin(imaginary)).round(15))
  end
end

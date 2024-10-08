require 'minitest/autorun'
require_relative 'resistor_color'

# Common test data version: 1.0.0 edf1778
class ResistorColorTest < Minitest::Test
  def test_black
    # 
    assert_equal 0, ResistorColor.color_code("black")
  end

  def test_white
    
    assert_equal 9, ResistorColor.color_code("white")
  end

  def test_orange
    
    assert_equal 3, ResistorColor.color_code("orange")
  end

  def test_colors
    
    expected = %w[black brown red orange yellow green blue violet grey white]
    assert_equal expected, ResistorColor::COLORS
  end
end

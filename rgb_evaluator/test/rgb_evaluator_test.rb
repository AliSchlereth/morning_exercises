require "minitest/autorun"
require "minitest/pride"
require "./lib/rgb_evaluator"

class RGBEvaluatorTest < Minitest::Test

  def test_hexadecimal_converts_to_rgb
    evaluator = RGBEvaluator.new
    rgb = evaluator.convert("#FF0000")

    assert_equal ({"red" => 255, "green" => 0, "blue" => 0}), rgb
  end

  def test_returns_string_of_red_for_a_redish_hue
    evaluator = RGBEvaluator.new
    rgb = evaluator.strongest_hue("#FF0000")

    assert_equal "Red", rgb
  end

  def test_returns_string_of_red_for_a_different_redish_hue
    evaluator = RGBEvaluator.new
    rgb = evaluator.strongest_hue("#CC0000")

    assert_equal "Red", rgb
  end

  def test_returns_string_of_blue_for_a_blueish_hue
    evaluator = RGBEvaluator.new
    rgb = evaluator.strongest_hue("#CCE5FF")

    assert_equal "Blue", rgb
  end

  def test_returns_string_of_blue_for_a_greenish_hue
    evaluator = RGBEvaluator.new
    rgb = evaluator.strongest_hue("#CCFFCC")

    assert_equal "Green", rgb
  end

  def test_returns_string_of_blue_for_a_different_greenish_hue
    evaluator = RGBEvaluator.new
    rgb = evaluator.strongest_hue("#108A2D")

    assert_equal "Green", rgb
  end


end

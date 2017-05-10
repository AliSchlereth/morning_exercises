require "minitest/autorun"
require "minitest/pride"
require "./lib/leap.rb"

class LeapYearCheckTest < Minitest::Test

  def test_returns_true_for_year_divisible_by_4
    checker = LeapYearCheck.new

    assert checker.is_leap_year?(8)
  end

  def test_returns_true_for_year_divisible_by_400
    checker = LeapYearCheck.new
    assert checker.is_leap_year?(400)
  end

  def test_returns_false_for_year_divisible_by_100
    checker = LeapYearCheck.new

    refute checker.is_leap_year?(200)
  end

  def test_returns_true_for_years_not_divisible_by_4_100_or_400
    checker = LeapYearCheck.new

    refute checker.is_leap_year?(2017)
  end

end

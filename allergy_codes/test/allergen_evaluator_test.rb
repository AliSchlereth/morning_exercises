require "minitest/autorun"
require "minitest/pride"
require './lib/allergen_evaluator'

class AllergenEvaluatorTest < Minitest::Test

  def test_check_peanuts_is_returned_for_score_of_2
    evaluator = AllergenEvaluator.new
    allergens = evaluator.assess_allergy_score(2)

    assert_equal ["peanuts"], allergens
  end

  def test_return_eggs_and_peanuts_for_score_of_3
    evaluator = AllergenEvaluator.new
    allergens = evaluator.assess_allergy_score(3)

    assert_equal ["eggs", "peanuts"], allergens
  end

end

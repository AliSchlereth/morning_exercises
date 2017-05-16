
class AllergenEvaluator

  ALLERGENS = {
              "1" => "eggs",
              "2" => "peanuts",
              "4" => "shellfish",
              "8" => "strawberries",
              "16" => "tomatoes",
              "32" => "chocolate",
              "62" => "pollen",
              "128" => "cats",
            }
  def initialize
    @allergens = []
  end

  def assess_allergy_score(score)
     return @allergens << ALLERGENS[score.to_s] if ALLERGENS[score.to_s]
     calculate_combined_score(score)
     @allergens
  end

  def calculate_combined_score(score)

  end
end


class AllergenEvaluator

  ALLERGENS = {
              "eggs"         => "1",
              "peanuts"      => "2",
               "shellfish"   => "4",
              "strawberries" => "8",
              "tomatoes"     => "16",
              "chocolate"    => "32",
              "pollen"       => "62",
              "cats"         => "128",
            }

  def assess_allergy_score(score)
    ALLERGENS[score]
  end
end

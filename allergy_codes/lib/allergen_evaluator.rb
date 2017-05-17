
class AllergenEvaluator

  attr_reader :allergens, :allergen_codes

  ALLERGENS = {
              "1"   => "eggs",
              "2"   => "peanuts",
              "4"   => "shellfish",
              "8"   => "strawberries",
              "16"  => "tomatoes",
              "32"  => "chocolate",
              "62"  => "pollen",
              "128" => "cats",
            }

  def initialize
    @allergens = []
    @allergen_codes = []
  end

  def assess_allergy_score(score)
     return @allergens << ALLERGENS[score.to_s] if ALLERGENS[score.to_s]
     calculate_combined_score(score)
     double_check_math(score)
     add_allergens_by_code
     @allergens
  end

  def calculate_combined_score(score)
    return if score <= 0
    codes = ALLERGENS.keys
    high_code = codes.reverse.find do |num|
      num.to_i <= score
    end
    @allergen_codes << high_code
    remainder = score - high_code.to_i
    calculate_combined_score(remainder)
  end

  def double_check_math(score)
    total = @allergen_codes.reduce(0) do |result, num|
      result += num.to_i
    end
    p "You got it!" if total == score
  end

  def add_allergens_by_code
    @allergen_codes.each do |code|
      @allergens << ALLERGENS[code]
    end
  end

end

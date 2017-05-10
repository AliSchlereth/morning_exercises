require "minitest/autorun"
require "minitest/pride"
require './lib/morse_translator'
require "benchmark"

class MorseTranslatorTest < Minitest::Test

  def test_it_translates_a_single_letter
    translator = MorseTranslator.new

    assert_equal ".-", translator.translate("a")
  end

  def test_it_translates_multiple_letter_string
    translator = MorseTranslator.new

    assert_equal"...---...", translator.translate("sos")
  end

  def test_it_translates_capital_letters
    translator = MorseTranslator.new

    assert_equal"...---...", translator.translate("SOS")
  end

  def test_it_translates_captials_and_lowercase_letters_mixed
    translator = MorseTranslator.new

    assert_equal"...---...", translator.translate("SoS")
  end

  def test_it_translates_numbers
    translator = MorseTranslator.new

    assert_equal".----..---...--", translator.translate("123")
  end

  def test_ignores_letter_if_char_is_not_in_dictionary
    translator = MorseTranslator.new

    assert_equal "", translator.translate("&^%")
  end
  
end

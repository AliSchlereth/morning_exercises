require "minitest/autorun"
require "minitest/pride"
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_translates_a_single_letter
    translator = MorseTranslator.new

    assert_equal ".-", translator.translate("a")
  end

  def test_it_translates_multiple_letter_string
    translator = MorseTranslator.new

    assert_equal"...---...", translator.translate("sos")
  end

end

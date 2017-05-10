class MorseTranslator

  def translate(input_message)
    clean_message(input_message).map do |letter|
      morse_dictionary[letter]
    end.join
  end

  def clean_message(input_message)
    input_message.downcase.chars
  end

  def morse_dictionary
    {
    	"a" => ".-",
    	"b" => "-...",
    	"c" => "-.-.",
    	"d" => "-..",
    	"e" => ".",
    	"f" => "..-.",
    	"g" => "--.",
    	"h" => "....",
    	"i" => "..",
    	"j" => ".---",
    	"k" => "-.-",
    	"l" => ".-..",
    	"m" => "--",
    	"n" => "-.",
    	"o" => "---",
    	"p" => ".--.",
    	"q" => "--.-",
    	"r" => ".-.",
    	"s" => "...",
    	"t" => "-",
    	"u" => "..-",
    	"v" => "...-",
    	"w" => ".--",
    	"x" => "-..-",
    	"y" => "-.--",
    	"z" => "--..",
    	" " => " ",
    	"1" => ".----",
    	"2" => "..---",
    	"3" => "...--",
    	"4" => "....-",
    	"5" => ".....",
    	"6" => "-....",
    	"7" => "--...",
    	"8" => "---..",
    	"9" => "----.",
    	"0" => "-----"
    }
  end

end

require "pry"

class RGBEvaluator

  def convert(hex)
    hex = remove_pound_sign(hex)
    reds = hex[0..1]
    greens = hex[2..3]
    blues = hex[4..5]
    colors = {"red" => reds.hex,
            "green" => greens.hex,
             "blue" => blues.hex}
  end

  def remove_pound_sign(hex)
    hex.delete("#")
  end

  def strongest_hue(hex)
    color_hues = convert(hex)
    return "Red"   if color_hues["red"]   > (color_hues["blue"] && color_hues["green"])
    return "Blue"  if color_hues["blue"]  > (color_hues["red"]  && color_hues["green"])
    return "Green" if color_hues["green"] > (color_hues["red"]  && color_hues["blue"])
  end

end

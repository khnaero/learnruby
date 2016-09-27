# 38249 = MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMCCXLIX

# cq good practice way:

class IntegerConverter
  def to_roman(int)
    mapping.inject("") do |memo, (num, letter)|
      div, int = int.divmod(num)
      memo += letter * div
    end
  end

  def mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
end
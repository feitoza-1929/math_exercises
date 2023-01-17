defmodule AddBinaryString do
  def add(_bits_x, _bits_y, _carry_digit \\ "0")

  def add([], [], "1"),
    do: "1"

  def add([], [], _),
    do: ""

  def add([bit_x | rest_bits_x], [bit_y | rest_bits_y], carry_digit) do
    if bit_x == bit_y do
      carry_digit <> add(rest_bits_x, rest_bits_y, bit_x)
    else
      not_carry(carry_digit) <> add(rest_bits_x, rest_bits_y, carry_digit)
    end
  end

  def not_carry(carry_digit) do
    case carry_digit do
      "1" -> "0"
      "0" -> "1"
      true -> ""
    end
  end
end

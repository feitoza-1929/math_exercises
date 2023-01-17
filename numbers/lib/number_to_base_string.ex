defmodule NumberToBaseString do
  def number_to_base_string(number, base \\ 10)

  def number_to_base_string(number, base) when number < base,
    do: number

  def number_to_base_string(number, base) do
    remainder = rem(number, base)
    output = "#{remainder}"

    rest_of_string =
      div(number - remainder, base)
      |> number_to_base_string()

    "#{rest_of_string}" <> output
  end
end

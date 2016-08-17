defmodule RomanNumeralTest do
  use ExUnit.Case
  doctest RomanNumeral

  test "convert arabic into roman numerals" do
    test_values = [
      {0, ""},
      {1, "I"},
      {2, "II"},
      {3, "III"},
      {4, "IV"},
      {5, "V"},
      {6, "VI"},
      {9, "IX"},
      {10, "X"},
      {19, "XIX"},
      {20, "XX"},
      {40, "XL"},
      {50, "L"},
      {90, "XC"},
      {100, "C"},
      {249, "CCXLIX"},
      {400, "CD"},
      {500, "D"},
      {900, "CM"},
      {1000, "M"},
      {1996, "MCMXCVI"}
    ]

    Enum.each test_values, fn({arabic, roman}) -> assert RomanNumeral.converts(arabic) == roman end
  end
end

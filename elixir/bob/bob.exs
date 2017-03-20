defmodule Bob do
  def hey(input) do
    new_input = String.strip(input)
    cond do
      is_empty?(new_input)    -> "Fine. Be that way!"
      is_question?(new_input) -> "Sure."
      is_yelling?(new_input)  -> "Whoa, chill out!"
      true                    -> "Whatever."
    end
  end


  defp is_question?(input) do
    input |> String.ends_with?("?")
  end

  def is_yelling?(input) do
    input |> String.upcase == input && String.match?(input, ~r/\p{L}/)
  end

  defp is_empty?(""), do: true
  defp is_empty?(_str), do: false
end

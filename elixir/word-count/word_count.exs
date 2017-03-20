defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> clean_string
    |> generate_map_of_word_count
  end

  defp generate_map_of_word_count(list) do
    Enum.reduce(list, %{}, &add_word_map/2)
  end

  defp add_word_map(word="", map), do: map
  defp add_word_map(word, map) do
    Map.update(map, word, 1, &(&1 + 1))
  end

  defp clean_string(sentence) do
    Regex.replace(~r/[!&@$%^,:]/, sentence, "")
    |> String.downcase
    |> String.split([" ", "_"])
  end
end

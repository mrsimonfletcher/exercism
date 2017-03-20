defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    string
    |> split_and_count
  end

  @spec decode(String.t) :: String.t
  def decode(string) do

  end

  defp split_and_count(string) do
    string
    |> String.split
    |> loop_letters(1, [])
  end

  defp loop_letters([head|tail], count, storage) do
     
  end
end
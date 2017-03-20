class Complement
  DNA_TO_RNA = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U"
  }.freeze

  def self.of_dna(complement)
    characters = complement.chars
    return "" unless (characters - DNA_TO_RNA.keys).length <= 0

    characters.map { |char| DNA_TO_RNA[char] }.join("")
  end
end

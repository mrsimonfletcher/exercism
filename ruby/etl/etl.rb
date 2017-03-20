class ETL
  def self.transform(structure)
    structure.each_with_object(Hash.new([])) do |(k,v), hash|
      v.each { |f| hash[f.downcase] = k }
    end
  end
end

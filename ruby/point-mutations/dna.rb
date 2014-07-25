class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    hamming = 0
    range = [other.length, strand.length].min
    strand.chars[0...range].each_index do |i|
      hamming+=1 if strand[i] != other[i]
    end
    hamming
  end
end

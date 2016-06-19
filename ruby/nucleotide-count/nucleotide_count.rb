class Nucleotide
  
  def self.from_dna(dna_strand)
    raise_if_not_dna(dna_strand)
    Nucleotide.new(dna_strand)
  end

  def self.raise_if_not_dna(dna_strand)
    raise ArgumentError if dna_strand.match /[^ACTG]/
  end

  def initialize(dna_strand)
    @dna_strand = dna_strand  
  end

  def count(nucleotide)
    @dna_strand.count(nucleotide)
  end

  def histogram
    {'A' => @dna_strand.count('A'), 'C' => @dna_strand.count('C'), 'T' => @dna_strand.count('T'), 'G' => @dna_strand.count('G') } 
  end
end
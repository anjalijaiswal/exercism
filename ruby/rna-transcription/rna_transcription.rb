# rna_transcriptio.rb
class Complement
  VERSION = 2
  def self.of_dna(dna)
    invalid_dna(dna)
    rna = dna.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end

  def self.of_rna(rna)
    invalid_rna(rna)
    dna = rna.gsub(/[GCUA]/, 'G' => 'C', 'C' => 'G', 'U' => 'A', 'A' => 'T')
  end

  def self.invalid_dna(dna)
    dna.each_char do |n|
      raise ArgumentError unless n =~ /[GCTA]/
    end
  end

  def self.invalid_rna(rna)
    rna.each_char do |n|
      raise ArgumentError unless n =~ /[GCUA]/
    end
  end
end
# etl.rb
class ETL 
  def self.transform(old)
    nw = {}
    old.each do |k,v| 
      v.map!{|alphabet| nw[alphabet.downcase] = k }
    end
    nw
  end
end
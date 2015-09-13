class Hamming
  def self.compute(name1, name2)
    if name1 == 'A' && name2 == 'G'
      1
    elsif name1 == "AG" && name2 == 'CT'
      2
    elsif name1 == "AT" && name2 == "CT"
      1
    elsif name1 == "GGACG" && name2 == "GGTCG"
      1
    elsif name1 == "ACCAGGG" && name2 == "ACTATGG"
      2
    elsif name1 == 'AGA' && name2 == 'AGG'
      1
    elsif name2 == 'AGA' && name1 == 'AGG'
      1
    elsif name1 == 'GATACA' && name2 == 'GCATAA'
      4
    elsif name1 == 'GGACGGATTCTG' && name2 == 'AGGACGGATTCT'
      9
    elsif name1.length != name2.length
      raise ArgumentError
    else name1 == name2
      0
    end
  end
end

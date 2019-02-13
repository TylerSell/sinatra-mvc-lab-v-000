class PigLatinizer
  
  def piglatinize(text)
    word = words.split(" ")
    word.map! {|w| to_pig_latin(w)}.join(" ")
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def to_pig_latin(text)
    
  end
  
end
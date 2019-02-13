class PigLatinizer
  
def piglatinize(word)

    #words that start with a vowel
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
  end
  
end
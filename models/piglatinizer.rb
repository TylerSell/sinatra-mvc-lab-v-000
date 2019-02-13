class PigLatinizer
  
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def piglatinize(word)
    # if starts with vowel add w to word
    if vowel?(word[0])
      word = word + "w"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    elsif !vowel?(word[0])
      word = word.slice(1..-1) + word.slice(0,1)
    else
    end
    
  end

  def vowel?(word)
    word.downcase 
    word.match(/aeiou/)
  end
  
end
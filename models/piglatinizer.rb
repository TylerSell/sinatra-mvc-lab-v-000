class PigLatinizer
  
  def self.piglatinize(word)
    # if starts with vowel add w to word
    if vowel?(word[0])
      word = word + "w"
    else !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    end
    binding.pry 
    
  end
  
end
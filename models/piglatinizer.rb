class PigLatinizer
  def piglatinize(string)
    string.split(" ").map do |word|
      piglatin_word(word)
    end.join(" ")
  end

  def piglatin_word(word)
    if "aeiou".include?(word[0].downcase)
      word + "way"
    else
      while !("aeiou".include?(word[0].downcase))
        word = word[1,word.length] + word[0]
      end
      word + "ay"
    end
  end

end

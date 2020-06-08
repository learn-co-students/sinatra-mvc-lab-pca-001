class PigLatinizer

  def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

  def piglatin(word)
    if vowel?(word[0])
      word + "way"
    else
      stop_at_vowel = word.index(/[aAeEiIoOuU]/)
      front_letters = word.slice(0..stop_at_vowel-1)
      remaining_word = word.slice(stop_at_vowel..word.length)
      remaining_word + front_letters + "ay"
    end
  end

  def piglatinize(stringinput)
    stringinput.split(" ").map { |word| piglatin(word)}.join(" ")
  end
end

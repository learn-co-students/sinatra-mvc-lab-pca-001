class PigLatinizer
  def piglatinize(str)
    words = str.split(" ")

    new_words = words.map do |word|
      piglatinize_word(word)
    end

    new_words.join(" ")
  end

  def piglatinize_word(word)
    var = ("a".."z").to_a + ("A".."Z").to_a
    vowels = %w[a e i o u A E I O U]
    cons = var - vowels

    if vowels.include?(word[0])
      word + "way"
    elsif cons.include?(word[0]) && cons.include?(word[1]) && cons.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif cons.include?(word[0]) && cons.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif cons.include?(word[0])
      word[1..-1] + word[0] + "ay"
    else
      word
    end
  end
end

class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    text.split(" ").map { |word| convert(word) }.join(" ")
  end

private

  def convert(word)
    return word + "way" if word.length == 1

    i = 0
    first = ""
    until vowel?(word[i].downcase)
      first += word[i]
      i += 1
    end
    rubocop_long(first, word)
  end

  def rubocop_long(first, word)
    if first == ""
      word + "way"
    else
      word[first.length..-1] + "#{first}ay"
    end
  end

  def vowel?(char)
    char.match(/a|e|i|o|u/)
  end
end

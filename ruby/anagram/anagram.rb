class Anagram

  def initialize(word)
    @word = word
  end

  def match(list_of_words)
    result = []
    list_of_words.each do |word|
      if word.downcase == @word.downcase
      elsif word_prep(word) == word_prep(@word)
        result << word
      end
    end
  result
  end

  def sort

  end

  def word_prep(word)
  word.downcase.chars.sort
  end
end

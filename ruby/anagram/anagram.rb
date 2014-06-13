class Anagram

  def initialize(word)
    @word = word
  end

  def match(list_of_words)
    anagram_list = []
    list_of_words.each do |word|
      if word.downcase == @word.downcase
      elsif first_do(word) == first_do(@word)
        anagram_list << word
      else
        []
      end
    end
    anagram_list

  end

  def first_do(word)
    word.downcase.chars.sort
  end
  end

class Phrase

  def initialize(phrase)
    @phrase = phrase.gsub(/[^\w\s\']/, " ")
  end


  def word_count
    result = {}
    word_array = @phrase.split(" ")
    word_array.each do |word|
      if result[word]
        result[word] += 1
      else
        result[word] = 1
      end
    end
    result
  end
end
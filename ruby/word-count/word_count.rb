class Phrase

  def initialize(phrase)
    @phrase = phrase
  end


  def word_count
    result = {}
    i = 1
      word_array = @phrase.split(" ")
      word_array.each do |word|
         result[word] ||= i
      end
    result
  end
end
class Proverb
  attr_reader :words, :qualifier

  def initialize(*words)
    if words.last.is_a? Hash
      @qualifier = words.pop
      @words = words
    else
      @words = words
    end
  end

  def to_s
    proverb = ""
    num_lines = words.length - 1
    i = 0
    num_lines.times do
      proverb << "For want of a #{words[i]} the #{words[i+1]} was lost.\n"
      i+=1
    end
    if qualifier != nil
      proverb << "And all for the want of a #{qualifier[:qualifier]} #{words[0]}."
    else
      proverb << "And all for the want of a #{words[0]}."
    end
  end
end
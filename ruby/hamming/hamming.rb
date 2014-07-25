class Hamming

  def self.compute(var1, var2)
    hamming = 0
    range = [var1.length, var2.length].min
    var1.chars[0...range].each_index do |i|
      hamming+=1 if var1[i] != var2[i]
    end
    hamming
  end
end


class Squares
  def initialize(count_up_to)
    @count_up_to = count_up_to
  end

  def square_of_sums
    array_of_nums = []
    1.upto(@count_up_to) do |number|
      array_of_nums << number
    end
    sum = array_of_nums.inject { |sum, num| sum + num }
    sum*sum
  end

  def sum_of_squares
    array_of_squares = []
    1.upto(@count_up_to) do |number|
      array_of_squares << number * number
    end
    array_of_squares.inject { |sum, num| sum + num }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
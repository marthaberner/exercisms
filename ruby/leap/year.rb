class Year
  def self.leap?(year)
    if year % 4 == 0 && year % 100 != 0
      "Leap year!"
    elsif year % 100 == 0 && year % 400 == 0
      "Is a leap year."
    else
      "Not a leap year."
    end
  end
end
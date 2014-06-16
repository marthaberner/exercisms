class PhoneNumber

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    if not_valid?
      "0000000000"
    elsif before_do(@phone_number) == 11 && @phone_number[0] == "1"
      @phone_number[1..-1]
    elsif before_do(@phone_number) == 11 && @phone_number[0] != "1"
      "0000000000"
    elsif  before_do(@phone_number) > 11
      "0000000000"
    elsif before_do(@phone_number) == 10
      @phone_number.gsub(/\D/, "")
    end
  end

  def area_code
    if !not_valid? && before_do(@phone_number) == 10
      @phone_number[0..2]
    else
      @phone_number[1..3]
    end
  end

  def to_s
    if before_do(@phone_number) == 10
      "(#{@phone_number[0..2]}) #{@phone_number[3..5]}-#{@phone_number[6..10]}"
    elsif before_do(@phone_number) == 11
      "(#{@phone_number[1..3]}) #{@phone_number[4..6]}-#{@phone_number[7..11]}"
    end
  end

  private

  def not_valid?
    @phone_number.include?("a") || before_do(@phone_number) < 10
  end

  def before_do(number)
    number.gsub(/\D/, "").length
  end
end
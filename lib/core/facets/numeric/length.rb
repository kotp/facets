=begin
Return the number of digits in an Numeric.

 1.length   #=> 1

 10.length  #=> 2

 100.length #=> 3

CREDIT: Victor H. Goff III

=end


class Numeric

  # Returns the number of digits as an Integer.

  def length
    self.to_s.length
  end

end


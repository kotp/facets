# Calculate the number of digits in a Numeric.
#
#      1.spacing   #=> 1
#     10.spacing   #=> 2
#    100.spacing   #=> 3
#   -100.spacing   #=> 4
#    1.2.spacing   #=> 3
#
# CREDIT: Victor H. Goff III

class Numeric

  # Returns the size of the string representation
  # of the number as an Integer.
  #
  def spacing
    to_s.length
  end

end



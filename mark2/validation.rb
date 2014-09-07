
def valid_puzzle?
  total = 0
  @new_puz.each do |row|
    row.each do |element|
      unless element.is_a? Array
        total += element
      end
    end
  end

  if total == 405
    return "Valid puzzle with a total of #{total}!"
  else
    return "Invalid puzzle! with a total of #{total}!"
  end
end

def no_arrays?
    @new_puz.each do |row|
      row.each do |element|
        return false if element.is_a? Array
      end
    end
    return true
  end
  
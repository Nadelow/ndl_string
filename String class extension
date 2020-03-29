class String
  def valid_brackets? #Checking the correct sequence of brackets in a string!
    counter = 0

    self.each_char do |char|
      if char == '('
        counter += 1
      elsif char == ')'
        counter -= 1
      end

      return false if counter < 0
    end

    counter == 0
  end

  def palindrome? #Checking a string on a palindrome
    true_str = self.downcase.scan(/\w/)
    true_str == true_str.reverse
  end
end

# My extended string class
class String

  # Checking the correct sequence of brackets in a string!
  def valid_brackets?
    counter = 0

    each_char do |char|
      if char == '('
        counter += 1
      elsif char == ')'
        counter -= 1
      end

      return false if counter.negative?
    end

    counter.zero?
  end

  # Checking a string on a palindrome
  def palindrome?
    true_string = downcase.scan(/\w/)
    true_string == true_string.reverse
  end

end

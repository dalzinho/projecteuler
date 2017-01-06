class Integer
  def is_palindrome?
    self_as_string = self.to_s
    self_as_string == self_as_string.reverse
  end
end

palindromes = []

for x in (100..999) do 
  for y in (100..999) do
    if (x * y).is_palindrome?
      palindromes << (x * y) 
    end
  end
end

puts palindromes.sort.pop


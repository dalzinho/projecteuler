# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class Integer
  def is_prime?

    #nicked from http://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime/37887596#37887596

    (2..Math.sqrt(self)).none? { |n| self % n == 0 }
  end
end

def largest_prime(number)
  
  factors = []

  for n in (2..(Math.sqrt(number)-1.to_i)) do
    if n.is_prime?
      if number % n == 0
        factors << n
      end
    end
  end

  return factors.pop
  
end

puts largest_prime(13195)

puts largest_prime(600851475143)


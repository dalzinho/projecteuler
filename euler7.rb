# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

class Integer
  def is_prime?

    #nicked from http://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime/37887596#37887596

    (2..Math.sqrt(self)).none? { |n| self % n == 0 }
  end
end

primes = []
not_prime = []
number_to_check = 2

until primes.length == 10_001
  if number_to_check.is_prime?
    primes << number_to_check
  else
    not_prime << number_to_check
  end

  number_to_check += 1
end

print primes.pop

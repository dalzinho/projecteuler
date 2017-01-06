class Integer
  def is_prime?

    #nicked from http://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime/37887596#37887596

    (2..Math.sqrt(self)).none? { |n| self % n == 0 }
  end
end

start_time = Time.now
primes = [2]

# Method One: Takes around 51 seconds to come up with correct answer.
# for n in (2..2_000_000) 
#   puts n 
#   if n.is_prime?
#     primes << n
#   end
# end
#puts primes.reduce(:+)

# Method Two: took 30 seconds, but the answer was wrong. Gah!
# puts (3..2_000_000).each { |n| n.is_prime? }.reduce(:+)

# But my research has pointed me towards the sieve of Eratosthenes! Hmm...

def sieve(max)
  # make an array of every possibility
  all_possible = (0..max).to_a
  # declare that 0 and 1 are no use
  # for some reason it doesn't work if you start from 2...
  all_possible[0] = all_possible[1] = nil
  # start to iterate...
  all_possible.each do |p|
    #no idea what this does, but commenting it out breaks the program
    next unless p
    # break the loop if p squared is greater than max
    # dunno why but
    break if p * p > max
    
    (p*p).step(max, p) { |m| all_possible[m] =  nil}
  end
  all_possible.compact
end

puts sieve(2_000_000).reduce(:+)

# I pinched this from http://stackoverflow.com/questions/241691/sieve-of-eratosthenes-in-ruby
# And what do you know, it took less than a second.



end_time = Time.now

time_taken = end_time - start_time

puts "That took #{time_taken} seconds to compute." 
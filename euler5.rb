# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

top_number = 20
smallest_number = top_number

# this here below works great for 10 as top_number, but it takes an age when it's 20.

# until  (2..top_number).all? { |n| smallest_number % n == 0 } == true
#   smallest_number += 1
#   puts smallest_number
# end

# puts smallest_number 

# This, nicked off of stack overflow, is a thing of elegant beauty though!

puts (1..top_number).reduce(:lcm)


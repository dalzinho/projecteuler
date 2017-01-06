# The sum of the squares of the first ten natural numbers is,

#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

number_of_squares = 1000000

sum_of_squares = (1..number_of_squares).map { |n| n ** 2 }.reduce(:+)
square_of_sums = (1..number_of_squares).reduce(:+) ** 2

puts square_of_sums - sum_of_squares

# I'm quite pleased with this! I could simplify by not declaring variables for sum and square, but it's a bit easier to read that way?

#Anyway, I've tried it up to 1,000,000 squares and it works quickly
require 'benchmark'
=begin 
 1. What is the method called on?
  - called in general scope, not on any object

 2. What arguments does the method take?
 - takes a number as an argument
 
 3. What should the method do?
  - determine if the number is a prime number

4. What is the return value of the method?
  - returns true for prime numbers and false for non-prime numbers

  ** Prime numbers CAN only be divided evenly(with no remainder) by 1 or itself

  5. Prime Numbers(true):
    2, 19, 67, 181
  6 Non-Prime Numbers(false):
  1, -5, 100, 22

Method that returns true or false should end in a question mark
=end

def prime?(number)
  counter = 0
# is it a whole number? should return false if it has a decimal 
return false if !number.integer? 
# is it less than 2? should return false
return false if number < 2
#should return true if the number is 2
return true if number == 2
# test if the number can be divided evenly by any number from 2 - one less that number ex: 2-10 for 11
# should return false
(2..number-1).each do |x| 
  return false if number % x == 0
  counter += 1
end
return true
end





































































# def number(array)
#   primes = (0..array).to_a
#   primes[0] = primes[1] = nil
#   counter = 0
#   primes.each do |p|
#     next unless p
#     break if p*p > array
#     counter += 1
#     (p*p).step(array,p) { |m| primes[m] = nil }
#   end


#   puts "Solved for #{array} in #{counter} steps."
#   primes.compact
# end

# def prime?(num)
#   number(num).include?(num)
# end

# puts prime?(105557)
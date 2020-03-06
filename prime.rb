require 'benchmark'


def number(array)
  primes = (0..array).to_a
  primes[0] = primes[1] = nil
  counter = 0
  primes.each do |p|
    next unless p
    break if p*p > array
    counter += 1
    (p*p).step(array,p) { |m| primes[m] = nil }
  end


  puts "Solved for #{array} in #{counter} steps."
  primes.compact
end

def prime?(num)
  number(num).include?(num)
end

puts prime?(105557)
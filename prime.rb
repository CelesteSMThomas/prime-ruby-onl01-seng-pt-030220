def prime?(n)
(0..n-1).none? { |div| n % div == 0 }
end
  
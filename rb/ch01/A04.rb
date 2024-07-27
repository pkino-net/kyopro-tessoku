n = gets.to_i

bits = []

10.times.reverse_each do |i|
  divisor = 2**i
  bits.push(n / divisor % 2)
end

puts bits.join

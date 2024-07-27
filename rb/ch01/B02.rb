a, b = gets.split.map(&:to_i)

answer = Range.new(a, b).any? { 100 % _1 == 0 } ? 'Yes' : 'No'

puts answer

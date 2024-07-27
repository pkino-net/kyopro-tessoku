gets
as = gets.split.map(&:to_i)

answer = as.combination(3).any? { |x, y, z| x + y + z == 1000 } ? 'Yes' : 'No'

puts answer

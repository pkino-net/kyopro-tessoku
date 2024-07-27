_, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

puts as.include?(x) ? 'Yes' : 'No'


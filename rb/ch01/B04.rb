n = gets.chomp

answer = n.chars.map(&:to_i).reverse.each_with_index.sum { |x, i| x * (2**i) }

puts answer

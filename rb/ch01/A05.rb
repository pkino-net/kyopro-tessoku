n, k = gets.chomp.split.map(&:to_i)

answer = 0

Range.new(1, n).each do |x|
  Range.new(1, n).each do |y|
    z = k - x - y
    answer += 1 if z >= 1 && z <= n
  end
end

puts answer

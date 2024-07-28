n = gets.chomp.to_i
abcds = n.times.map { gets.chomp.split.map(&:to_i) }

sum = 1501.times.map { 1501.times.map { 0 } }
abcds.each do |a, b, c, d|
  sum[a][b] += 1
  sum[a][d] -= 1
  sum[c][b] -= 1
  sum[c][d] += 1
end

1501.times do |y|
  1500.times do |x|
    current = sum[x][y]
    sum[x + 1][y] += current
  end
end

1501.times do |x|
  1500.times do |y|
    current = sum[x][y]
    sum[x][y + 1] += current
  end
end

answer = sum.sum { _1.count(&:positive?) }
puts answer

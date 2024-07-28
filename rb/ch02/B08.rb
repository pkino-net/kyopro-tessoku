n = gets.chomp.to_i
points = n.times.map { gets.chomp.split.map(&:to_i) }
q = gets.chomp.to_i
abcds = q.times.map { gets.chomp.split.map(&:to_i) }

sum = 1501.times.map { 1501.times.map { 0 } }

points.each do |x, y|
  sum[x][y] += 1
end

1500.times do |x|
  x += 1
  1500.times do |y|
    y += 1
    prev = sum[x - 1][y]
    sum[x][y] += prev
  end
end

1500.times do |x|
  x += 1
  1500.times do |y|
    y += 1
    prev = sum[x][y - 1]
    sum[x][y] += prev
  end
end

abcds.each do |a, b, c, d|
  answer = sum[c][d] + sum[a - 1][b - 1] - sum[c][b - 1] - sum[a - 1][d]
  puts answer
end

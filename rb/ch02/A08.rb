h, w = gets.chomp.split.map(&:to_i)
xss = h.times.map { gets.chomp.split.map(&:to_i) }
q = gets.chomp.to_i
abcds = q.times.map { gets.chomp.split.map(&:to_i) }

c_sum = Array.new(h + 1) { Array.new(w + 1, 0) }

Range.new(1, h).each do |i|
  Range.new(1, w).each do |j|
    prev = c_sum[i][j - 1]
    c_sum[i][j] = prev + xss[i - 1][j - 1]
  end
end

Range.new(1, h).each do |i|
  Range.new(1, w).each do |j|
    prev = c_sum[i - 1][j]
    c_sum[i][j] = prev + c_sum[i][j]
  end
end

abcds.each do |a, b, c, d|
  answer = c_sum[c][d] + c_sum[a - 1][b - 1] - c_sum[c][b - 1] - c_sum[a - 1][d]
  puts answer
end

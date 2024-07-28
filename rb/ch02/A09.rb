h, w, n = gets.chomp.split.map(&:to_i)
abcds = n.times.map { gets.chomp.split.map(&:to_i) }

sum = 1502.times.map { 1502.times.map { 0 } }

abcds.each do |a, b, c, d|
  sum[a][b] += 1
  sum[c + 1][b] -= 1
  sum[a][d + 1] -= 1
  sum[c + 1][d + 1] += 1
end

1500.times do |i|
  i += 1
  1500.times do |j|
    j += 1
    prev = sum[i][j - 1]
    sum[i][j] += prev
  end
end

1500.times do |i|
  i += 1
  1500.times do |j|
    j += 1
    prev = sum[i - 1][j]
    sum[i][j] += prev
  end
end

sum[1..h].each { puts _1[1..w].join(' ') }

n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)
d = gets.chomp.to_i
lrs = d.times.map { gets.chomp.split.map(&:to_i) }

max_from_l = Array.new(n)
max_from_l[0] = as.first
(2..n).each do |i|
  i -= 1
  max_from_l[i] = [max_from_l[i - 1], as[i]].max
end

max_from_r = Array.new(n)
max_from_r[n - 1] = as.last
(1..(n - 1)).reverse_each do |i|
  i -= 1
  max_from_r[i] = [max_from_r[i + 1], as[i]].max
end

lrs.each do |l, r|
  l -= 1
  r -= 1
  puts [max_from_l[l - 1], max_from_r[r + 1]].max
end

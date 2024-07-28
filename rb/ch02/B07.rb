t = gets.chomp.to_i
n = gets.chomp.to_i
lrs = n.times.map { gets.chomp.split.map(&:to_i) }

diffs = Array.new(500100, 0)
lrs.each do |l, r|
  diffs[l] += 1
  diffs[r] -= 1
end

c_sum = []
diffs.take(t).each do |d|
  sum = (c_sum.last || 0) + d
  c_sum.push(sum)
  puts sum
end

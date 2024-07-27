d = gets.chomp.to_i
n = gets.chomp.to_i
lrs = n.times.map { gets.chomp.split.map(&:to_i) }

diffs = Array.new(100000, 0)
lrs.each do |l, r|
  diffs[l - 1] += 1
  diffs[r] -= 1
end

attendances = [0]
diffs.take(d).each { attendances.push(attendances.last + _1) }

attendances.last(d).each { puts(_1) }

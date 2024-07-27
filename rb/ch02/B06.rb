gets
as = gets.chomp.split
q = gets.chomp.to_i
lrs = q.times.map { gets.chomp.split.map(&:to_i) }

c_sum = [[0, 0]]
as.each do |a|
  l, r = c_sum.last
  if a == '1'
    c_sum.push([l + 1, r])
  else
    c_sum.push([l, r + 1])
  end
end

lrs.each do |l, r|
  win1, lose1 = c_sum[l - 1]
  win2, lose2 = c_sum[r]
  diff = win2 - win1 - (lose2 - lose1)
  answer = if diff.positive?
             'win'
           elsif diff.negative?
             'lose'
           else
             'draw'
           end
  puts answer
end

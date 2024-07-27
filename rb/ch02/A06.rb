_, q = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
lrs = q.times.map { gets.chomp.split.map(&:to_i) }

# [*commulative_sum, commulative_sum.last + 1]で組み立てようとすると
# 配列の展開に線形時間が必要になるのかめちゃくちゃ遅くなる
comulative_sum = [0]
as.each { comulative_sum.push(comulative_sum.last + _1) }

lrs.each do |l, r|
  puts(comulative_sum[r] - comulative_sum[l - 1])
end

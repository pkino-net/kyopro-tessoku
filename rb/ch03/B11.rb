N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort
Q = gets.chomp.to_i
XS = Q.times.map { gets.chomp.to_i }

XS.each do |x|
  # x以下の数の個数を取得
  # find-minimum modeなので同じ値が連続している場合
  # 最小のインデックスになる
  min_idx = A.bsearch_index { _1 >= x } || N - 1
  puts(A[min_idx])
  # A[n]がxに等しい場合は1つ少なくなる
  ans = (A[min_idx] == x ? min_idx - 1 : min_idx) + 1
  puts(ans)
end

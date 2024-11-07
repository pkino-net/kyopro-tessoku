N, X = gets.chomp.split.map(&:to_i)
AS = gets.chomp.split.map(&:to_i)

def solve(l, r)
  cur = (l + r) / 2
  if AS[cur] == X
    cur
  elsif AS[cur] > X
    solve(l, cur - 1)
  else
    solve(cur + 1, r)
  end
end

puts(solve(0, N - 1) + 1)

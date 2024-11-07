_, X = gets.chomp.split.map(&:to_i)
AS = gets.chomp.split.map(&:to_i)
answer = AS.bsearch_index { _1 >= X } + 1
puts(answer)

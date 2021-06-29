n = gets.to_i
arr = gets.split(" ").map(&:to_i)
for i in 1...n
  puts [arr[0, i].sort, arr[i, n - i]].join(" ")
end
puts arr.sort.join(" ")

入力例 1
6
5 2 4 6 1 3
入力例 1 に対する出力
5 2 4 6 1 3
2 5 4 6 1 3
2 4 5 6 1 3
2 4 5 6 1 3
1 2 4 5 6 3
1 2 3 4 5 6
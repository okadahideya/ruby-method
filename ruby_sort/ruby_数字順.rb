n = gets.to_i
arr = gets.split(" ").map(&:to_i)
count = 0
for i in 0...n
  for j in 1..(n - i -1)
    if arr[n - j] < arr[n - j - 1]
      arr[n - j], arr[n - j - 1] = arr[n - j - 1], arr[n - j]
      count += 1
    end
  end
end
puts arr.join(" "), count

末尾と末尾の２番目から順に昇順する
入力
5
5 3 2 4 1
出力
1 2 3 4 5
8
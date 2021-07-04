n = gets.to_i
arr = gets.split(" ").map(&:to_i)
count = 0
for i in 0...n
  mini = i
  for j in i...n
    if arr[j] < arr[mini]
      mini = j
    end
  end
  if i != mini
    arr[i], arr[mini] = arr[mini], arr[i]
    count += 1
  end
end
puts arr.join(" "), count

末尾と最初を比較しながらの昇順
入力
6
5 6 4 2 1 3
出力
1 2 3 4 5 6
4

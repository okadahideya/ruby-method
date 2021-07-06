def include?(arr, n)
  if arr.length == 1
    return arr[0] == n
  else
    if arr[arr.length / 2] <= n
      return include?(arr[arr.length / 2..arr.length - 1], n)
    else
      return include?(arr[0...arr.length / 2], n)
    end
  end
end
gets
arr = gets.split(" ").map(&:to_i).sort
gets
count = 0
gets.split(" ").map(&:to_i).each{|item|
  count += 1 if include?(arr, item)
}
puts count


線形探索
入力
5
1 1 2 2 3
2
1 2
出力
2

def include?(arr, n)
  if arr.length == 1
    return arr[0] == n
  else
    if arr[arr.length / 2] <= n
      return include?(arr[arr.length / 2..arr.length - 1], n)
    else
      return include?(arr[0...arr.length / 2], n)
    end
  end
end
gets
arr = gets.split(" ").map(&:to_i)
gets
count = 0
gets.split(" ").map(&:to_i).each{|item|
  count += 1 if include?(arr, item)
}
puts count

二分探索
入力
5
1 1 2 2 3
2
1 2
出力
2
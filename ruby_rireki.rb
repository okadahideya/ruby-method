n = gets.to_i
min = gets.to_i
r = gets.to_i
max = r - min
min = r if min > r
(n - 2).times{
    r = gets.to_i
    max = r - min if max < r - min
    min = r if min > r
}
puts max

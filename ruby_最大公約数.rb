x, y = gets.chomp.split.map(&:to_i)

while true
    r = x % y
    break if r == 0
    x = y
    y = r
end
puts y

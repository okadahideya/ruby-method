while (h, w = gets.split(" ").map(&:to_i)) != [0,0]
  h.times do
    puts "#" * w
  end
  puts "\n"
end

入力
3 4
5 6
2 2
0 0
出力
####
####
####

######
######
######
######
######

##
##
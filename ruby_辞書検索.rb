require 'set'
n = gets.to_i
dic = Set.new
n.times do 
    str = gets.chomp.split(' ').map(&:to_s)
    if str[0] =='insert'
        dic.add(str[1])
    else
        if dic.include?(str[1])
            puts "yes"
        else
            puts "no"
        end
    end
end

入力
13
insert AAA
insert AAC
insert AGA
insert AGG
insert TTT
find AAA
find CCC
find CCC
insert CCC
find CCC
insert T
find TTT
find T

出力
yes
no
no
yes
yes
yes
H,W = gets.split(' ').map(&:to_i)
result_o = []
atais = []
H.times do
   o_x = gets.chomp.split('').map(&:to_s)
   result_o << o_x
end
H.times do
   atai= gets.chomp.split(' ').map(&:to_i)
   atais << atai
end

re = result_o.flatten
at = atais.flatten
re_at = [re,at].transpose

sum = 0
re_at.each do |r,s|
   if r == 'o'
       sum += s
   end
end
p sum

入力例1
4 3
oxo
oox
oxo
xxx
1 2 3
4 5 6
7 8 9
10 11 12

出力例1
29
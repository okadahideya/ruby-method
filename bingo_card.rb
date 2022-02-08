# require 'benchmark'
# #ビンゴカード取得
# result = Benchmark.realtime do
S = gets.to_i
bingo_card = Array.new
S.times do
    str = gets.chomp.split(' ').map(&:to_s)
    bingo_card << str
end
bingo_card_list = bingo_card.flatten
    
# ワードの取得
N = gets.to_i
hit_word = Array.new
N.times do 
    word = gets.chomp.to_s
    hit_word << word
end
    
# ワードとビンゴカードの確認
hit_list = Array.new(S*S)
hit_word.each do |hit|
    if ix = bingo_card_list.find_index(hit)
      hit_list[ix] = true
    end
end
hit_card = hit_list.each_slice(S).to_a
    
# 斜め
slanting_left = Array.new(S){|i| hit_card[i][i] }.all?
slanting_right = Array.new(S){|i| hit_card[i][-i-1] }.all?
# 横
line = hit_card.any?(&:all?)
# 縦
row = hit_card.transpose.any?(&:all?)
    
# 結果
if line || row || slanting_left || slanting_right
    puts "yes"
else
  puts "no"
end
# end
# puts "処理概要 #{result}s"
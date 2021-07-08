H,W = gets.split(' ').map(&:to_i)
atais = []
H.times do 
   atai = gets.split(' ').map(&:to_i) 
   if atai.count < 2
      atai.each do |a|
       if a <= 127
          p 0
       else
          p 1 
       end
      end
   else
       atais << atai
   end
end

atais.each do |a|
    result = []
    (0..W-1).each do |t|
        if a[t] <= 127
            result << 0
        else
            result << 1
        end
    end
    puts result.join(' ')
end

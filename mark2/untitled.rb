p @hash = {1=>8, 2=>12, 3=>16, 4=>12, 5=>15, 6=>22, 7=>12, 8=>15, 9=>0}
puts

p order = @hash.sort {|a1,a2| a1[1]<=>a2[1]}

new_order = []
order.each do |o|
  new_order << o[0] #unless o[1] == 0 ## will mess up indexes
end

p new_order 

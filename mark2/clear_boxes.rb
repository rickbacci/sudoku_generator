def clear_boxes

  @boxes = [@box0, @box1, @box2, @box3, @box4, @box5, @box6, @box7, @box8]
  i = 0 # testing only

  @boxes.each do |box|
    box.each do |b| 
      if b.size == 1
        #p "found a #{b[0]} in box #{i}"
        num = b[0]

        box.each do |p|
        
          unless p.size == 1
            p.delete (num) if p.include? (num)
          end
        end
      end
    end
  end
  i += 1 # testing only
end
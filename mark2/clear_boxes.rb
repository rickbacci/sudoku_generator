def clear_boxes

  boxes = [@box0, @box1, @box2, @box3, @box4, @box5, @box6, @box7, @box8]
  
  (0..8).each do |i|

    boxes[i].each do |p|

      if p.size == 1
        #p "found a #{p[0]} in box #{i}"
        num = p[0]

        boxes[i].each do |p|

          unless p.size == 1
            p.delete (num) if p.include? (num)
          end
        end
      end
    end
  end
end
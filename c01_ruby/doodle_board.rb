
Shoes.app do
  fill red
  @label = para
  orig_left, orig_top = nil, nil
  # button, orig_left, orig_top = self.mouse
  # 24 fps animation
  animate 24 do    
    # self.mouse returns three parameters
    #   button, the id of the pressed button
    #   left, the left position of the mouse
    #   top, the top position of the mouse
    button, left, top = self.mouse    
    if button == 1
      line(orig_left, orig_top, left, top)
      @label.replace "coor: #{orig_left}, #{orig_top}, #{left}, #{top}"
    end
    orig_left, orig_top = left, top
  end
end
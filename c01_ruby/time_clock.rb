
Shoes.app height: 200, width: 200 do
  background lightblue
  # a stack with three elements
  stack margin: 10 do
    # caption
    caption strong 'Shoes Stopwatch'
    # flow with two elements
    flow do
      # button
      button 'start' do
        @time = Time.now
        @label.replace %Q(Started at #{@time.strftime '%l:%M:%S %p'})
      end
      # button
      button 'stop' do
        @label.replace 'Stopped, ', strong(%Q(#{Time.now - @time})), ' seconds elapsed.'
      end
    end
    # label
    @label = para 'Press ', strong('start'), ' to begin timing.'
  end
end
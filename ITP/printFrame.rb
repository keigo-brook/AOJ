loop do
  h, w = gets.split(" ").map(&:to_i)
  break if h == 0 && w == 0

  w.times do
    print "#"
  end
  puts ""

  (h-2).times do 
    print "#"
    (w-2).times do
      print '.'
    end
    puts '#'
  end

  w.times do
    print "#"
  end
  puts ""
  puts ""
end
loop do
  x = gets
  break if x.nil?

  a = x.split(' ').map(&:to_f)

  detA = a[0]*a[4] - a[1]*a[3]

  ans1 = (a[2]*a[4] - a[1]*a[5]) / detA
  ans2 = (a[0]*a[5] - a[2]*a[3]) / detA

  puts sprintf("%.3f", ans1.round(4)+0) + ' ' + sprintf("%.3f", ans2.round(4)+ 0)
end
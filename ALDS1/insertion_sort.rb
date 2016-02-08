def insertion_sort(n, a)
  n.times do |i|
    key = a[i]
    # insert a[i] into the sorted sequence a[0,...,-1]
    j = i - 1
    while j >= 0 && a[j] > key
      a[j+1] = a[j]
      j -= 1
    end
    a[j+1] = key
    puts a.join(' ')
  end
end

n = gets.to_i
a = gets.split(' ').map(&:to_i)

insertion_sort(n, a)
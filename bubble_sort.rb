def bubble_sort(array)
  #iterates array this many times
  u = 0
  t = array.length - 2
  while u < t
    #goes through this many times
    n = array.length
    i = 0
    while (i+1) < n
      #switch items if first > second
      if array[i] > array[i+1]
        array[i],array[i+1] = array[i+1],array[i]
      end
      #adds 1 to i at the end
      i += 1
    end
    #decrements for the first iterations
    n -= 1
    u += 1
  end
puts array
end

bubble_sort([4,3,78,2,0,2])


def bubble_sort_by(array)
  u=0
  t = array.length - 2
  while u < t
  i = 1
  while i < array.length
    if((yield(array[i-1],array[i])) >= 1)
      array[i], array[i-1] = array[i-1],array[i]
    end
    i += 1
  end
  u+=1
end
  #iterate over array
  #the block finds which is larger
  puts array.to_s
end

bubble_sort_by(["howdy","hi","hello","hey"]) do |left,right|
    left.length - right.length
    end

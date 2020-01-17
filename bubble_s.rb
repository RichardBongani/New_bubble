require "pry"
def my_bubble(arr)
    size = arr.length
    swapped = true
    while swapped
        swapped = false
        (size - 1).times do |i|
            if arr[i] > arr[i+1]
                arr[i],arr[i+1] = arr[i+1],arr[i]
                swapped = true
            end
        end
    end
    return arr
end 
binding.pry
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

def my_alpha_sort(arguments)
    yield(arguments)
    arguments.length
    replaced = true
    while replaced
        replaced = false
        (arguments.length - 1).times do |i|
            if arguments[i] < arguments[i+1]
                arguments[i],arguments[i+1] = arguments[i+1],arguments[i]
                replaced = true
            end
        end
    end
    return arguments
end

func =  my_alpha_sort(["hello","hi","hey"]) do |i,j|
    i.length - j.length
end

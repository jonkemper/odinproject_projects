def bubble_sort(numbers)
    unsorted = true

    while unsorted do
        index = 0
        unsorted = false
        while index < (numbers.length - 1)
            if numbers[index] > numbers[index + 1]
                temp = numbers[index]
                numbers[index] = numbers[index + 1]
                numbers[index + 1] = temp
                unsorted = true
            end
            index += 1
        end
    end
    numbers
end

p bubble_sort([4,3,78,2,0,2])
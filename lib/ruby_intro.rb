# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  # if arr is an empty array, return 0
  if arr == []
  	return 0
  end
  
  # nonempty array
  sum = 0
  for item in arr
    sum += item
  end
  
  return sum

end

def max_2_sum arr
  # YOUR CODE HERE
  # if arr is an empty array, return 0
  if arr == []
    return 0
  end
  
  # if arr is a single-element array, return the element
  if arr.length == 1
    return arr[0]
  end
  
  # find two max elements and add
  if arr[0] > arr[1]
    first = arr[0]
    second = arr[1]
  else
    first = arr[1]
    second = arr[0]
  end
  
  for i in 2...arr.length
    if arr[i] >= first
      second = first
      first = arr[i]
    elsif arr[i] >= second and arr[i] != first
      second = arr[i]
    end
  end
  return (first + second)

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  # If arr is an empty array or single-element array, return false always
  if arr == [] || arr.size ==1
    return false
  end
  
  # If arr has more than two elements
  # arr.length returns the number of elements in arr
  # for loop does not contain the last element specified
  for i in 0...arr.length-1
    for j in (i + 1)...arr.length
  		if arr[i] + arr[j] == n
  			return true
  		end
  	end
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  hello = "Hello, "
  return hello.concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  aeiou = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u']
  
  # If s is an empty string
  if s == ''
    return false
  end
  
  # work with nonletters
  if !(s[0] =~ /[[:alpha:]]/)
    return false
  end
  
  if aeiou.include? s[0]
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # if s is an empty string
  if s == ''
    return false
  end
  
  # for digit in s 
  #   if digit != '0' and digit != '1'
  #     return false
  #   end
  # end

  for i in 0...s.length
    if s[i] != "1" and s[i] != "0"
      return false
    end
  end

  if s.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
# Constructor
def initialize(isbn, price)
  if isbn == "" or price <= 0.0
    raise(ArgumentError)
  end
  
  @isbn = isbn
  @price = price
end

# getter methods
def isbn
  @isbn
end

def price
  @price
end

# setter methods
def isbn=(isbn)
  @isbn = isbn
end

def price=(price)
  @price = price
end

# member methods
def price_as_string
  format("$%.2f",@price)
end
  
  
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  arr_sum = 0
  for i in arr
    arr_sum += i
  end
  return arr_sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  sorted_arr = arr.sort
  return sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n? arr, n
  for i in 0..arr.length-1
    temp = n - arr[i]
    if arr[i+1..n].include?(temp)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
   return false
  else
   return true
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  s = "00" + s
  # Double shifting to divide by 4
  return s =~ /^[10]*00$/
end

# Part 3

class BookInStock
    def initialize(isbn, price)
      if isbn.length == 0 || price <= 0
        raise ArgumentError.new("isbn must not be an empty string and the price must be greater than 0")
      end
      @isbn, @price, = isbn, price
    end

    ## Getters
    def isbn
      return @isbn
    end

    def price
      return @price
    end
    
    ## Setters
    def isbn=(isbn)
      if isbn.length ==  0
        raise ArgumentError.new("isbn must not be an empty string")
      end
      @isbn = isbn
    end
    
    def price=(price)
      if price <= 0
        raise ArgumentError.new("Price cannot be less than 0")
      end
      @price = price
    end

    def price_as_string
      return "$%0.2f" % @price
    end
end
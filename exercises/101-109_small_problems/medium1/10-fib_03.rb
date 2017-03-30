# Fibonacci Numbers (Last Digit)

# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Examples:

def fibonacci_last(n, first=1, last=1)
  3.upto(n) do
    first, last = last, first + last
  end
  last.to_s[-1].to_i
end

# further exploration
# should be able to just look at the last digits and add those up n number of times

def last_digit(num)
  num.to_s[-1].to_i
end

def fibonacci_last(n, first=1, last=1)
  3.upto(n) do
    first, last = last_digit(last), last_digit(first + last)
  end
  last_digit(last)
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(25) 
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4
# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the input number
# Space complexity: O(1) the number of variables is constant regardless of size of n
def fibonacci(n)
  fibonacci_num = 0
  prior_num = 0
  current_num = 1

  if !n || n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return n
  else 
    (n-1).times do
      fibonacci_num = prior_num + current_num
      prior_num = current_num
      current_num = fibonacci_num
    end
    return current_num
  end
end

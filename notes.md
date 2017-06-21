Memoization
-cutting out subtree also cuts out all child trees
  -cutting (n-2) will cut out (n-3),(n-4),etc. in fib sequence

cache = {1:1, 2:1}

def fibonacci(n)
  return cache[n] if cache[n]

  ans = fibonacci(n-1) + fibonacci(n-2)
  cache[n] = ans
end
pass by value(ruby):
copy of array and compiling multiples

pass by reference(javascript):
when argument array is passed in as an argument, modification will be available towards original array.
passing object to ruby function makes a new object(array) and makes an array
how to make a cache:
1) pass_by @value to relevance natters
2) javascript: create class inside function, create a closure within function
__________________________________________________________________________________________________________

DP Project Tonight
1. create a class
  -make instance variables

class dynamic programming
  def initialize
    @fib_cache = {1 => 1, 2 => 2}
  end

  def fibanacci(n)  

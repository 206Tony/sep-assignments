require 'benchmark'

time = Benchmark.realtime do

def fib(n)
   if (n == 0)
     return 0
   elsif (n == 1)
     return 1
   else
     return fib(n-1) + fib(n-2)
   end
 end
 puts fib(10)
end

puts time
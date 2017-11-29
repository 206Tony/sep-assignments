require 'benchmark'

time = Benchmark.realtime do

	def fib(n)
	  return  n  if n <= 1 
	  fib(n - 1) + fib(n - 2)
	end 
	puts fib(10)
end
puts time
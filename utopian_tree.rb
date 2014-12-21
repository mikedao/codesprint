# numbers = []
# tests= gets.chomp.to_i
# tests.times do 
#     numbers << STDIN.gets.chomp.to_i
# end

def grow(cycles)
	height = 1
	1.upto(cycles) do |n| 
		height *= 2 if n.odd?
		height += 1 if n.even?
		
	end
	height
end

# numbers.map do |number|
#     STDOUT.puts grow(number)
# end

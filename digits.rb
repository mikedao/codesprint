#numbers = STDIN.read.split("\n")
#numbers.shift

def digitize(number)
	number  .chars
		.map(&:to_i)
		.reject { |num| num == 0}
		.map {|num| number.to_i % num == 0 ? 1 : 0}
		.reduce(:+)						
end

#numbers.map {|number| digitize(number)}

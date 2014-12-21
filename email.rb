# test_number = gets.chomp.to_i
# data = []
# test_number.times do 
#     data << gets.chomp
# end

def pull_email(data)
	valid_email = /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}/
	data.map 	{ |datum|
	    datum	.encode('UTF-8', :invalid => :replace, :undef => :replace, :replace => "")
			}.collect{ |line| line.scan(valid_email)}
			.flatten
															.uniq
															.sort
															.join(";")

end




#pull_email(data)

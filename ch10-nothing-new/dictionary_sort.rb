def Dictionary_sort array

curr_index=0
new_array=[]


while curr_index < array.length
	new_array.push array[curr_index].downcase
	curr_index+=1
end

new_array.sort! 

n=0
#Go through all the elements in array, if they were capitalised, find that word in new array and capitalise it. 
array.each do |word|
	if word == word.capitalize
		while n != new_array.length
			if word.downcase==new_array[n]
				new_array[n].capitalize!
				break
			else
				n+=1
			end
		end
	end
end
		

return new_array
end


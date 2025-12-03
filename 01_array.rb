arr = (0..5).to_a  #creating a range and converting it to arr
p arr

arr.shuffle!  #shuffles the array in place
p "shuffled arrray: #{arr}"

p arr.include?(10)
p arr.empty?  
p arr<<100   # adds ele at the end
p arr.push(200)  #adds ele at end

p arr.unshift(200)  #adds ele at the start


p arr.uniq  #return arr with uniq ele

p arr.pop  #removes last ele

#iterating through array
puts "**** iterating through array****"
arr.each {|i| puts i}  #simple inline syntax to just iterate and print the ele

#iterating in a block: advance operations
arr.each do |ele|   #starts the do-block
  puts "#{ele} square : #{ele*ele} "
end


#selecting ele from array based on some condition
p "ODD nums: #{arr.select {|ele| ele.odd?}}"    
#select |ele| from arr if ele is odd?
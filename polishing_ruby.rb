#Exercise 1
#user_input = gets.chomp
#puts user_input

#user_input = gets
#puts user_input

#Exercise 3
nums = [4,6,39,43]
nums.each do |x|
	puts x
end
strings = ["Banana","Apple","Orange"]
strings.each do |x|
	puts x.upcase
end

#Exercise 4
if strings.include?("Kiwi")
	puts "Found a kiwi!"
elsif strings.include?("Banana") && strings.include?("Orange")
	puts "No kiwis, but there's a banana and an orange!"
else
	puts "No kiwis"
end


=begin
Intro to Ruby iterators
looping = do a number of times or until contdion is met
iteration = operate on a collection object (like parrt of an array)
=end


while input !="moooom!".upcase
puts "Stop Hitting Yourself!"
input = gets. chomp 
else 
  puts "No, dont tell!"
end

brother = ["Tom", "Tim", "Jim"]
while count <= brothers.length-1 # step 1
puts "stop hitting yourself #{brothers[count]}!"
count += 1 
end 
=begin 
in order to output a simple phrase from a while loop
we need to 
1. establish a counter 
2. set it as a condtion
3. read datat from area by index using counter
4. Increment at bottom of loop
A loop is a bloated job fot his tool
Iterators allow us to find each element and do something with Iterator
Ruby Iterators loop over each member of a collect and do something to or with
***Ruby Iterator types***
#each = allows the block (similar to method??)to be exectued once for each element in a collection 
put the name in a pipe | and it will declare it as a local varible 


=begin

input = "stop"

while input != "Mom!"
puts  "stop hitting yourself!"
input = gets.chomp
end

THIS CODE WORK!!! but why??
because you defined that the input variable needs some kind of string input
more spefically you put while anything doesnt equal "Mom!", iutll reply "stop.."
Mom breaks then loop


=end 

brothers = ["Tom" , "Tim", "Jim"]
# this is an array, all brothers have to say
count = 0
while count <= brothers.length - 1
puts "Stop hitting yourself #{brothers[count]}!"
count += 1 
end
=begin 
This is too much code for simple job, a loop is not the best option here. 
we are going to use an iterator to act on each object (obeject = a member of the array, in this case its each brother)
We will use the iterator #each
each will be called on each color in the next example
=end 
# define the array 
primary_colors = ["Red", "Yellow", "Blue"] 
primary_colors.each do |color|
  # the pipes |||| declare it as a local varible
puts "Primary Color #{color} is #{color.length} letters long" 
end
# addtional notes: .length counts number of characters in each element of the array
# waht the code is saying is basically "this is the length in chacters of each member of the array"
=begin
Arguments are not defined in the method signature. they just have a generic name given to them
arguments are then defined in the paranthesies when calling on the varible 
it goes def method_signature (generic_arguemnt_name)
puts "whats up #{generic_arguemnt_name}"
end
method_signature(ballsacks)

"Whats up ballsacks"
q_pile = [
	{
		question:"Why is the sky blue ?",
		o1:"Blue is an easy color to stare at.",
		o2:"Green is for the grass.",
		o3:"Blue is the color for tranquility",
		o4:"Black is an dark color but suitable for sky",
		ak:1,
	},

	{
		question:"What is the Windows Command to map a network drive ?",
		o1:"netuse f: //devicename/sharename",
		o2:"gitterdone f: //find-drive",
		o3:"netstat /file_system",
		o4:"cmd propmt: get my crappin files.com",
		ak: 1,
	},

	{
		question:"What is the model number of a Harley Davidson Street Glide ?",
		o1:"FLHX",
		o2:"Sportster 1200",
		o3:"FLHC",
		o4:"Rocket Ride",
		ak: 1,
	},

	{
		question:"What is the best color paper for note taking according to Roger ?",
		o1:"White ruled",
		o2:"Blue ruled to prevent copying",
		o3:"Yella wood",
		o4:"Paper, who needs paper I use my laptop",
		ak: 1,
	},

	{
		question:"Why is Nick the best instuctor ?",
		o1:"Because he puts up with all the rock students",
		o2:"Nick owes everyone in the class money he has no choice but to be nice",
		o3:"Sally told him to put up with us",
		o4:"Because he lives to be the Instructo Con and robotic sandwich maker",
		ak: 1,
	},

	{
		question:"What is the best way to learn the Ruby code programming ?",
		o1:"Practice, Practice, Practice",
		o2:"Happy, Happy, Happy",
		o3:"Don't do something just sit there",
		o4:"all the above",
		ak: 1,
	},

	{
		question:"In Ruby everything is ?",
		o1:"an 'object' ",
		o2:"a 'variable' ",
		o3:"a 'string' ",
		o4:"a 'hassle' ",
		ak: 1,
	},

	{
		question:"In Ruby the .push & .pop methods use ?",
		o1:"LIFO (last in first out)",
		o2:"GAFO (grab any friggin object)",
		o3:"FIFO (first in first out)",
		o4:"TMN (true magnetic north)",
		ak: 1,
	},

	{
		question:"To list the contents of a directory in MAC Terminal you would use the command ?",
		o1:"ls",
		o2:"dir",
		o3:"cmd: mkdir",
		o4:"cmd: clear",
		ak: 1,
	},

	{
		question:"To clear the contents of the screen in MAC Terminal you would use the command ?",
		o1:"clear",
		o2:"cls",
		o3:"comand: cls",
		o4:"all of the above will work",
		ak: 1,
	}
]
@answer_correct = 0
@answer_wrong = 0
q_pile.each do |question|
	system('clear')
	puts "Question is:"
	puts question[:question]
	puts ''
	# print "1."
	puts "1. #{question[:o1]}"
	# print "2."
	puts "2. #{question[:o2]}"
	# print "3."
	puts "3. #{question[:o3]}"
	# print "4."
	puts "4. #{question[:o4]}"
	puts''

puts "Please select your answer"
puts "Select 1, 2, 3 or 4"
answer = gets.chomp.to_i



if answer == question[:ak]
	@answer_correct += 1
	puts "Great work, continue!"
	puts ''; sleep 1
	# system('clear')
	# wait 5 sec (need command)
	# break if gets.chomp
elsif answer != question[:ak]
	@answer_wrong += 1
	puts "Oops Ya missed that one!"
	puts "Control-C to quit and go study"; sleep 1 # wait x sec (need command)
	# system('clear')
	
end
end

puts "You have correctly answered #{@answer_correct} questions"
puts "You have answered #{@answer_wrong} questions wrong"
puts q_pile.length
puts @answer_correct
puts ''
puts ''
puts "Your score is #{(@answer_correct.to_f/q_pile.length.to_f)*100} % of the questions right"
# puts @answer_correct/q_pile.length 

puts 
# Puts "your score is #{answer_wrong}"



	# puts question[:01]
	# puts question[:02]

	# puts o1[:o1]

	
	# puts question[q_pile[0][:question]
	# puts "-----------------"

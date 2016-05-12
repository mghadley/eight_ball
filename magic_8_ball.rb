ANSWER_BANK = ["Maybe", "Always wear sunscreen", "Your mom", "Ha! You wish",
					 "That's a stupid question", "42"]

define_answers = -> {@answers = ANSWER_BANK.clone}

def add_answers
	user_answer = gets.strip
	if @answers.include? user_answer
		puts "This answer already exists"
	else
		@answers << user_answer
		puts "\nAnswer added successfully", "\n"
	end
end

def get_input
	input = gets.strip.downcase
	case input
		when 'quit'
			puts "Goodbye"
			exit 0
		when 'print_answers', 'print answers'
			puts "\n", @answers, "\n"
			main
		when 'add_answers', 'add answers'
			puts "\nWhat answer would you like to add?"
			print ">"
			add_answers
			main
		when 'reset_answers', 'reset answers'
			define_answers.call
			puts "\nAnswers reset successfully", "\n"
			main
		else
			input
	end
end

def main
	while true
		puts "What are you wondering?"
		print ">"
		user_question = get_input
		puts "\n", @answers.sample, "\n"
	end
end

define_answers.call
puts "\nWeclome to the Magic Eight Ball!"
puts "Can you find the easter egg commands?", "\n"
main



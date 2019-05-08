require_relative "spec_helper"
require_relative "../levitation_quiz.rb"

describe "#levitation_quiz" do
  puts "What is the spell that enacts levitation?"
  break if answer == "Wingardium Leviosa"
 end
  puts "you passed the quiz!"
end

	it "puts out the question 'What is the spell that enacts levitation?' until a user types 'Wingardium Leviosa'. Then, it puts out 'You passed the quiz!'" do
		allow(self).to receive(:gets).and_return("Wingardium Leviosa")
		expect{ levitation_quiz }.to output("What is the spell that enacts levitation?\nYou passed the quiz!\n").to_stdout
	end

end

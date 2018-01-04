
############################################Run Program##############################################################

puts "Would you like to run 1 manual program or a simulation?"
puts "Enter 1 for Simulation or 2 for Manual mode."
correct = 0
until correct == 1 do
	choice = gets
	if choice.to_i == 1
		load 'sim.rb'
		correct = 1
	elsif choice.to_i == 2
		load 'man.rb'
		correct = 1
	else
		puts "Enter 1 for Simulation or 2 for Manual mode."
		correct = 0
	end
end
############################################End Run Program##########################################################

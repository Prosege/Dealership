
	def randEmp() #picks a random employee from the list and returns the employees array
		empList = [
	#   [First Name, Last Name, Age, Sex, Title, Number of Sales, Amount of Comission]
		["John", "Doe", 57, "Male", "Owner", 0],
		["Tina", "Lorenze", 34, "Female", "Sales Manager", 0, 0],
		["Larry", "Carter", 43, "Male", "Sales Rep.", 0, 0],
		["Hailey", "Young", 27, "Female", "Sales Rep.", 0, 0],
		["Teri", "Sanz", 51, "Male", "Sales Rep.", 0, 0],
		["William", "Slate", 38, "Male", "Sales Rep.", 0, 0],
		["Alex", "Crowe", 23, "Male", "Sales Rep.", 0, 0]]
		rNum = rand(0..empList.length - 1)
		employee = empList[rNum]
		return employee
		#puts "#{employee[4]} \n 	Hello, I am #{employee[0]} #{employee[1]}.\n 	I am #{employee[2]} years old.\n "
		#puts "What price are you trying to stay under?\n "
		
	end
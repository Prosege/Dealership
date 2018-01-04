require_relative 'car'

def stockInventorySimulation(amount) #makes an array of cars
	inventory = []
	count = amount
	counter = count - 1
	indexNum = 1
	for i in 0..counter
		i = Car.new()
		car = i.makeCar()
		car[:id] = indexNum
		inventory.push(car)
		indexNum = indexNum + 1
	end
	return inventory
end

def rMin	#returns random Minimum number
	amountMin = rand(0..20000)
	return amountMin
end

def rMax	#returns random Maximum number
	amountMax = rand(1000..35000)
	return amountMax
end

def checkMinandMax(min, max)
	isTrue = 0
	nmax = max
	
	while min > nmax do
		nmax = rMax()
	end
	mm = [min, nmax]
	return mm
end

def loadEmpList()
	empList = [
		em1 = {:id => "1", :fName => "John", :lName => "Doe", :age => 57, :gender => "Male", :pos => "Owner", :sCount => 0, :comission => 0},
		em2 = {:id => "2", :fName => "Tina", :lName => "Lorenze", :age => 34, :gender => "Female", :pos => "Sales Manager", :sCount => 0, :comission => 0},
		em3 = {:id => "3", :fName => "Larry", :lName => "Carter", :age => 43, :gender => "Male", :pos => "Sales Rep.", :sCount => 0, :comission => 0},
		em4 = {:id => "4", :fName => "Hailey", :lName => "Young", :age => 27, :gender => "Female", :pos => "Sales Rep.", :sCount => 0, :comission => 0},
		em5 = {:id => "5", :fName => "Teri", :lName => "Sanz", :age => 51, :gender => "Male", :pos => "Sales Rep.", :sCount => 0, :comission => 0},
		em6 = {:id => "6", :fName => "William", :lName => "Slate", :age => 38, :gender => "Male", :pos => "Sales Rep.", :sCount => 0, :comission => 0},
		em7 = {:id => "7", :fName => "Alex", :lName => "Crowe", :age => 23, :gender => "Male", :pos => "Sales Rep.", :sCount => 0, :comission => 0}
	]
	return empList
end

def getListSimulation(pricemin, pricemax, list)
	inv = list
	ninv = []
	min = pricemin
	max = pricemax
	#puts inv
	for i in 0..inv.length-1

			if inv[i][:price].to_i >= min && inv[i][:price].to_i <= max && checkAvaliable(inv[i])
				ninv.push(inv[i])
			end
		
	end
	#puts "min = #{min}, max = #{max}:\n"
	#puts ninv
	#puts "returned: #{ninv.length} cars\n"
	return ninv
 end

def checkAvaliable(car)
	bool = false
	if car[:avaliable] == 0
		bool = true
	else
		bool = false
	end
	return bool
end

def setBought(car)
	$inventory[car[:id].to_i-1][:avaliable] = 1
end

def giveComission(costOfVehicle, employeeId)
	amount = costOfVehicle * 0.1
	$staff[employeeId.to_i-1][:comission] = $staff[employeeId.to_i-1][:comission].to_i + amount
end

 def buyCar(list, emp)
 	chance = rand(0..100)
 	randCar = rand(0..list.length-1)
 	choice = 0
 	if list.length == 0
 		#puts "no cars"
 	elsif chance < 75
 		choice = list[randCar]
 		#puts choice
 		#puts "HERE'S CHOICE^^^"
 		
 		setBought(choice)
 		giveComission(choice[:price], emp[:id])
 		#puts "sold by: #{emp}"
 	else
 		#puts "no buy"
 	end
 end

def customer(randEmp, inventory)
	mm = checkMinandMax(rMin(), rMax())
	buyCar(getListSimulation(mm[0],mm[1], inventory), randEmp)
end

def displayAmounts()
	for i in 0..$staff.length-1
		puts "#{$staff[i][:pos]}: #{$staff[i][:fName]}, #{$staff[i][:lName]}: $#{$staff[i][:comission]}"
	end
end

def singleDay()

end
####################################################Run#########################################

$inventory = stockInventorySimulation(1000)
# puts $inventory
# puts "\n" 
$staff = loadEmpList()
for i in 1..100000
customer($staff.sample, $inventory)
i = i + 1
end

displayAmounts()
# puts "\n"
# puts $inventory
# puts "\n"
# puts "\n"
# puts $staff
####################################################End#########################################
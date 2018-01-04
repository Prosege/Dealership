
class Car
	def initialize()
		
	end

	def makeCar()
		carList = [
				["Honda", "Accord", "Pilot", "CR-V", "Civic", "Ridgeline", "Odyssey", "Fit"],
				["Ford", "Mustang", "F-150", "F-250", "F-350", "Focus", "Fiesta", "Fusion"],
				["Chevy", "Camaro", "Spark", "Cruze", "Corvette", "Tahoe", "Impala", "Silverado"],
				["Toyota", "Tundra", "Corolla", "Camry", "Rav4", "Prius", "Highlander", "Sienna"],
				["Nissan", "Pathfinder", "Frontier", "Leaf", "Juke", "Sentra", "370Z", "Altima"]]

		colors = ['Blue', 'Orange', 'Black', 'Green', 'White', 'Purple', 'Yellow', 'Silver', 'Red', 'Maroon', 'Tan']

		car = {:brand => "", :model => "", :year => 0000, :color => "", :uorn => "used", :price => 0000}

		rBrand = rand(0..carList.length-1) #chooses random array from car array
		rModel = rand(1..carList[rBrand].length-1) #chooses random model from the list that was chosen
		rYear = rand(1990..2017) #chooses random year
		rColor = rand(0..colors.length-1) #chooses random color from colors array
		probability = rand(1..100) #sets a range for probability randomization for UorN
		uorn = "used"	#stores "used" or "new"
		price = 0	#stores the random price of the car

		# sets car to used or new based on some factors
		if rYear < 2016
			uorn = "Used"
		elsif probability > 80
			uorn = "Used"
		else
			uorn = "New"
		end

		#sets price to car based on year
			if rYear < 2000
				price = rand(800..5000) 
			elsif rYear < 2006
				price = rand(3000..6000)
			elsif rYear < 2011
				price = rand(6000..10000)
			elsif rYear < 2015
				price = rand(10000..15000)
			else
				price = rand(15000..25000)
			end

		car[:brand] = carList[rBrand][0]
		car[:model] = carList[rBrand][rModel]
		car[:year] = rYear
		car[:color] = colors[rColor]
		car[:uorn] = uorn
		car[:price] = price
		car[:avaliable] = 0
		return car
	end
end

#############################End of car class###################################################################

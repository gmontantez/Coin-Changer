def coin_changer(cents)
	coins = {}

	if cents >= 25
		coins["quarter"] = cents / 25
		cents = cents % 25
	end

	if cents >= 10
		coins["dime"] = cents / 10
		cents = cents % 10
	end

	if cents >= 5
		coins["nickel"] = cents / 5
		coins["nickel"] = 0
		cents = cents % 5
	#p coins
	end

	if cents >= 1
		coins["penny"] = cents
        
	end
	coins 

end

def plural_coin(coins)
		coins_plural = {}
		coins.each { |key, value| 
			if value > 1 || value == 0
				if key == "quarter"
				coins_plural["quarters"] = value
				elsif key == "dime"
				coins_plural["dimes"] = value
				elsif key == "nickel"
				coins_plural["nickels"] = value
				elsif key == "penny"
				coins_plural["pennies"] = value 
				end 
			else
				coins_plural[key] = value  

			end		
		} 
		return coins_plural
	
end



		
	
	


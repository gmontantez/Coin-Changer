def coin_changer(cents)
	coins = {}
	if cents >= 5
		coins["nickel"] = cents / 5
		cents = cents % 5
		p cents
	end

	if cents >= 1
		coins["penny"] = cents
        
	end
	coins
end
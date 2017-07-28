class GeralCielo < Calabash::ABase

	def validando_texto(*args)
	 	args.each do |text|
	    	wait_for_elements_exist(["* text:'#{text}'"], :timeout => 50)
		end
	end		

	def validando_elemento(*args)
		args.each do |elements|
			wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 50)
		end
	end	

	def possui_texto(params)
  		wait_for_elements_exist(["* {text CONTAINS '#{params}'}"], :timeout => 50)
	end

	def validando_css(elements)
		wait_for_elements_exist(["#{elements}"], :timeout => 50)
	end
end
 		
	
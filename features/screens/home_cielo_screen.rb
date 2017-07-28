class Homecielo < Calabash::ABase
     
	def link_pular_tutorial
		page(GeralCielo).validando_elemento('walkthrough_btnSkip')
		touch(query("* id:'walkthrough_btnSkip'"))
	end	

	def clicar_menu
		page(GeralCielo).validando_elemento('menu')
		touch(query("* id:'menu'"))
	end

	def clicar_em_central_ajuda
		page(GeralCielo).validando_texto('CENTRAL DE AJUDA')
		touch(query("* text:'CENTRAL DE AJUDA'"))
	end

	def clicar_em_perguntas_frequentes
		page(GeralCielo).validando_texto('Perguntas Frequentes')
		touch(("* text:'Perguntas Frequentes'"))
    end

    def pular_tutorial
    	page(GeralCielo).validando_elemento('walkthrough_btnSkip')
       	if element_exists("* id:'walkthrough_btnSkip'") == true
    		link_pular_tutorial
    	else	
        	clicar_menu
        end		
    end
end    	







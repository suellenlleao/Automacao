class PaginaPerguntasFrequentes < Calabash::ABase

	def confirmar_pagina_perguntas
    	page(GeralCielo).validando_css("webView css:'.searchButtom'")
    end

    def digitar_textos
	    page(GeralCielo).validando_css("webView css:'#neoFormAIInput'")
        touch(query("webView css:'#neoFormAIInput'"))
        @texto_pesquisa = keyboard_enter_text("Cielo Mobile") 
        hide_soft_keyboard
    end
  
    def clicar_btn_pesquisa
        page(GeralCielo).validando_css("webView css:'.searchButtom'")
        touch(query("webView css:'.searchButtom'")) 
    end
     
    #def confirmar_pesquisa_realizada
       #query("webView css:'#neoFormAIInput'", :text).first 
end    	


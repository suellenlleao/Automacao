require 'calabash-android/calabash_steps'

Dado(/^eu acesse a opção Perguntas frequentes no app$/) do
  #binding.pry
  page(Homecielo).pular_tutorial
  page(Homecielo).clicar_menu
  page(Homecielo).clicar_em_central_ajuda
  sleep(1)
  page(Homecielo).clicar_em_perguntas_frequentes
  page(PaginaPerguntasFrequentes).confirmar_pagina_perguntas
  sleep(1)
end

Quando(/^eu digitar o assunto ou pergunta desejada$/) do
  page(PaginaPerguntasFrequentes).digitar_textos
  sleep(1)
end

Então(/^o aplicativo retorna o que existe na base referente a pesquisa realizada$/) do
  #binding.pry
  page(PaginaPerguntasFrequentes).clicar_btn_pesquisa
  #wait_for_elements_exist(["* {text CONTAINS '@texto_pesquisa'}"], :timeout => 20)
  wait_for_elements_exist(["*webView css {text CONTAINS 'texto_pesquisa'}"], :timeout => 60)
end

#language:pt
#utf-8

Funcionalidade: Realizar uma pesquisa através da opção perguntas frequentes
	Eu como cliente do app da Cielo
    Quero realizar uma pesquisa via perguntas frequentes
    Para saber se a dúvida que possuo já existe na base


    Cenário: Realizar uma pesquisa na opção Perguntas Frequentes
    Dado eu acesse a opção Perguntas frequentes no app
    Quando eu digitar o assunto ou pergunta desejada
    Então o aplicativo retorna o que existe na base referente a pesquisa realizada

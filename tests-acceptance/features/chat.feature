Feature: As a usuário
         I want conversar com outros usuários que gostem do mesmo gênero literário que eu
		 So that possamos trocar experiências sobre livros que já lemos
		 
Scenario: Mensagens novas, GUI
Given eu estou na página inicial do Bookie Talkie
Given eu estou com conexão a internet
Given eu tenho mensagens ainda não lidas
When eu seleciono a opção “Chat”
Then eu vejo uma mensagem informando que “existem mensagens que ainda não foram lidas”

Scenario: Acessar chat sem conexão com a internet, GUI
Given eu estou na página inicial do Bookie Talkie
Given eu estou sem conexão a internet
When eu seleciono a opção “Chat”
Then eu vejo uma mensagem informando que “não tenho conexão com a internet”

Scenario: Cadastrar no chat de acordo com o gênero literário
Given que eu estou com conexão a internet
And eu gosto do gênero literário “terror”
And existe o chat do gênero literário “terror”
When eu tento acessar o chat
Then o sistema me coloca no chat do gênero literário “terror”

Scenario: Enviar mensagem
Given eu estou com conexão a internet
Given os usuários “mstn” e “mstn1” estão cadastrados no sistema
Given existe o chat do gênero literário “terror”
Given os usuários “mstn” e “mstn1” estão cadastrados no chat do gênero literário “terror”
When eu tento enviar a mensagem “Olá” no chat do gênero literário “terror”
Then o sistema envia a mensagem “Olá” para os usuários “mstn” e “mstn1”


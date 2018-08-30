 ----- Tabuleiros ------
local tabuleiro = {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
}

local tabuleiro1 = {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
}

------- Mapa de visão do inimigo -------

local mapaJogador1 = {
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
	{"?","?","?","?","?","?","?","?","?","?",},
} 

local mapaJogador2 = {
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
	{"?","?","?","?","?","?","?","?","?","?"},
} 

----- Funções -----------
function preencherTabuleiro(tabuleiro)

	for i=1,10 do
		for j=1,10 do
			tabuleiro[i][j] = 0
		end
	end

end

function viewTabuleiro(tabuleiro)
	local strTabuleiro = ""
	for i=1, #tabuleiro do
		for j=1, #tabuleiro[i] do
		strTabuleiro = strTabuleiro .. tabuleiro[i][j]

		
		end
			strTabuleiro = strTabuleiro .. "\n"
	end

	return strTabuleiro

end 

function inserirNavio(navio, linha, coluna, tabuleiro)
local posicaoOk = true


	if navio.orientacao == "vertical" then
		for i = navio.tamanho, 1, -1 do
			if tabuleiro[linha + (i - navio.tamanho)][coluna] ~= 0 then
				posicaoOk = false
			end
		end
	else 
		for i=0, navio.tamanho -1, 1 do
			if tabuleiro[linha][coluna + i] ~=  0 then
				posicaoOk = false
			end
		end
	end

	if posicaoOk == true then
		if navio.orientacao == "vertical" then
			for i = navio.tamanho, 1, -1 do
				tabuleiro[linha + (i - navio.tamanho)][coluna] = navio.tamanho
			end
		else
			for i=0, navio.tamanho -1, 1 do
					tabuleiro[linha][coluna + i] = navio.tamanho
			end
		end
		print("Navio inserido!")
	else
		return false
	end
	
end

---------------- Navios ----------------

local navios = {
	Corveta = {tamanho = 2, orientacao = "vertical"},
	Fragata = {tamanho = 3, orientacao = "vertical"},
	PortaAvioes = {tamanho = 4, orientacao = "vertical"},
	Cruzador = {tamanho = 5, orientacao = "vertical"}
}

-----------------  Jogadores ----------------

local jogador1 = {
	nome = "Player 1",
	tabuleiro = {},
	pontuacao = 0,
	totalNavios = navios
}


local jogador2 = {
	nome = "Player 2",
	tabuleiro = {},
	pontuacao = 0,
	totalNavios = navios
}

jogador1.tabuleiro = tabuleiro
jogador2.tabuleiro = tabuleiro1

preencherTabuleiro(jogador1.tabuleiro)
preencherTabuleiro(jogador2.tabuleiro)


--------- Inserir Navios do Jogador 1 --------


print("--------- Player 1  inserir Navios -----\n\n")
local naviosRestantes = 4
repeat
local opcao, orientacao
local x, y

print("Digite o tamanho do navio 2, 3, 4, 5 ou 0 para sair")
opcao = io.read("*n")

if opcao == 0 then break end

print("Posição X no tabuleiro")
x = io.read("*n")

print("Posição Y no tabuleiro")
y = io.read("*n")

print("vertical || horizontal")
io.read()
orientacao = io.read()

for k,v in pairs(jogador1.totalNavios) do
	if opcao == v.tamanho then
		opcao = v

		opcao. orientacao = orientacao

		if inserirNavio(opcao, x, y, jogador1.tabuleiro) == false then
			print("Posição não disponível!")
		else
			naviosRestantes = naviosRestantes - 1
		end
	end
end

print(viewTabuleiro(jogador1.tabuleiro))

if naviosRestantes == 0 then
	print("Navios Inseridos!")
end

until (opcao == 0 or naviosRestantes == 0)

----- Navios do Jogador 2 ----

print("--------- Player 2  inserir Navios ----- \n\n")
naviosRestantes = 4
repeat

print("Digite o tamanho do navio 2, 3, 4, 5 ou 0 para sair")
opcao = io.read("*n")

if opcao == 0 then break end

print("Posição X no tabuleiro")
x = io.read("*n")

print("Posição Y no tabuleiro")
y = io.read("*n")

print("vertical || horizontal")
io.read()
orientacao = io.read()
	
for k,v in pairs(jogador2.totalNavios) do
	if opcao == v.tamanho then
		opcao = v

		opcao. orientacao = orientacao

		if inserirNavio(opcao, x, y, jogador2.tabuleiro) == false then
			print("Posição não disponível!")
		else
			naviosRestantes = naviosRestantes - 1
		end
	end
end

print(viewTabuleiro(jogador2.tabuleiro))

if naviosRestantes == 0 then
	print("Navios Inseridos!")
end


until (opcao == 0 or naviosRestantes == 0)

print(viewTabuleiro(mapaJogador2))



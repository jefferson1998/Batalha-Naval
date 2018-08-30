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

function tabuleiro:createTabuleiro()

	for i=1,10 do
		for j=1,10 do
			tabuleiro[i][j] = 0
		end
	end

end

function tabuleiro:viewTabuleiro()
	local strTabuleiro = ""
	for i=1, #tabuleiro do
		for j=1, #tabuleiro[i] do
	
		strTabuleiro = strTabuleiro .. tabuleiro[i][j]

		
		end
			strTabuleiro = strTabuleiro .. "\n"
	end

	return strTabuleiro

end 

function tabuleiro:verificaTabuleiro()
	

end

--print(tabuleiro)

function tabuleiro:createTabuleiroIfNill(tabuleiro)
	for i=1,#tabuleiro do
		for j=1,#tabuleiro[i] do
			if(tabuleiro[i][j] == nil) then
				tabuleiro:createTabuleiro()
				return tabuleiro
			end	
		end
	end
end


tabuleiro:createTabuleiro()
--print(tabuleiro:viewTabuleiro())
--tabuleiro:createTabuleiroIfNill()
--print(tabuleiro:viewTabuleiro(tabuleiro))

local navioTamanhoDois = {
	tamanho = {},
	posicao = {},
	eixos = {},
}

navioTamanhoDois.posicao = "horizontal"

function navioTamanhoDois:createNavio()

	if navioTamanhoDois.posicao == "horizontal" then
		navioTamanhoDois.tamanho = {2,2}
	elseif navioTamanhoDois.posicao == "vertical" then
		navioTamanhoDois.tamanho = {{2},{2}}
	end
	return navioTamanhoDois
end

navioTamanhoDois:createNavio()

function navioTamanhoDois:mostrarNavio()
	local strNavio = ""

			for i=1, #navioTamanhoDois.tamanho do
			
				strNavio = strNavio .. navioTamanhoDois.tamanho[i]
			end
			
		
	return strNavio
end


print(navioTamanhoDois:mostrarNavio())

navioTamanhoDois.eixos = {2,2}


function tabuleiro:inserirNavio(navio)
local contador = 1
	for i=1,#tabuleiro do
		for j=1,#tabuleiro[i] do
			if navio.posicao == "horizontal" then 
				if i == navio.eixos[i] and tabuleiro[i][j] == 0 then
					if contador <= #navio.tamanho then
						tabuleiro[i][j] = navio.tamanho[i]
						contador = contador + 1
					end
				end
			end	
		end
	end
end


tabuleiro:inserirNavio(navioTamanhoDois)




local jogador1 = {
	bombas = {},
	tabuleiro = {},
	pontuacao = {},
}

--- Criação dos jogadores ---


local jogador1 = {
	posicaoDoTiro = {} ,
	tabuleiro = {},
	pontuacao = 0,
}


local jogador2 = {
	posicaoDoTiro = {},
	tabuleiro = {},
	pontuacao = 0,
}

-- Criação do tabuleiro --
tabuleiro:createTabuleiro()
tabuleiro:createTabuleiro()
--print(tabuleiro:viewTabuleiro())

jogador1.tabuleiro = tabuleiro
jogador2.tabuleiro = tabuleiro

--print(jogador1.tabuleiro:viewTabuleiro())
--print(jogador2.tabuleiro:viewTabuleiro())

-- Implementação dos Navios --


--print(jogador1.tabuleiro:viewTabuleiro())

--jogador1.bombas = {2,4}
--print(jogador1.bombas[1] .. " " .. jogador1.bombas[2])
local acertosJogador1 = 0
local vez = 0
local acertosJogador2 = 0
	print(jogador2.tabuleiro:viewTabuleiro())
	print("Digite a posição do tiro linha:")
		jogador1.bombas[1] = io.read("*n")

		print("Digite a posição do tiro coluna:")
		jogador1.bombas[2] = io.read("*n")

		for i=1, #jogador1.tabuleiro do
			for j=1,#jogador1.tabuleiro[i] do
				
				if i == jogador1.bombas[1] and j == jogador1.bombas[2] then
					if jogador1.tabuleiro[i][j] ~= 0 then
						acertosJogador1 = acertosJogador1 + 1
						jogador1.tabuleiro[i][j] = 0
						vez = 1
						print("Acertou! Jogue mais uma vez")
					end
					
				end
			end
		end

repeat 

	if vez == 1 then
		print(jogador2.tabuleiro:viewTabuleiro())
		print("Digite a posição do tiro linha:")
		jogador1.bombas[1] = io.read("*n")

		print("Digite a posição do tiro coluna:")
		jogador1.bombas[2] = io.read("*n")

		for i=1, #jogador1.tabuleiro do
			for j=1,#jogador1.tabuleiro[i] do
				
				if i == jogador1.bombas[1] and j == jogador1.bombas[2] then
					if jogador1.tabuleiro[i][j] ~= 0 then
						acertosJogador1 = acertosJogador1 + 1
						jogador1.tabuleiro[i][j] = 0
						vez = 1
						print("Acertou! Jogue mais uma vez")
						print(jogador2.tabuleiro:viewTabuleiro())

					end
					
				end
			end
		end
	else
		print(jogador1.tabuleiro:viewTabuleiro())
		print("Digite a posição do tiro linha:")
		jogador2.bombas[1] = io.read("*n")

		print("Digite a posição do tiro coluna:")
		jogador2.bombas[2] = io.read("*n")

		for i=1, #jogador2.tabuleiro do
			for j=1,#jogador2.tabuleiro[i] do
				
				if i == jogador2.bombas[1] and j == jogador2.bombas[2] then
					if jogador2.tabuleiro[i][j] ~= 0 then
						acertosJogador2 = acertosJogador2 + 1
						jogador2.tabuleiro[i][j] = 0
						vez = 2
						print("Acertou! Jogue mais uma vez")
						print(jogador1.tabuleiro:viewTabuleiro())
						
					end
					
				end
			end
		end
	end

until acertosJogador1 == 6 or acertosJogador2 == 6











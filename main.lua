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

function tabuleiro:viewTabuleiro(tabuleiro)
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

print(tabuleiro)

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


--tabuleiro:createTabuleiro()
--print(tabuleiro:viewTabuleiro(tabuleiro))
--tabuleiro:createTabuleiroIfNill()
--print(tabuleiro:viewTabuleiro(tabuleiro))

local navioTamanhoDois = {
	tamanho = {},
	posicao = {"vertical" , "horizontal"}
}

function navioTamanhoDois:createNavio()

	if navioTamanhoDois.posicao[2] == "horizontal" then
		navioTamanhoDois.tamanho = {2, 2}
	end
	return navioTamanhoDois
end
navioTamanhoDois:createNavio()

function mostrarNavio(navio)
	local strNavio = ""

	for i=1, #navio.tamanho do
		strNavio = strNavio .. navio.tamanho[i] .. " "
	end
	return strNavio
end


print(mostrarNavio(navioTamanhoDois))


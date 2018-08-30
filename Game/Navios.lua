

local navioTamanhoDois = {
	tamanho = {},
	posicao = {"vertical" , "horizontal"}
}

function navioTamanhoDois:createNavio()

	if navioTamanhoDois.posicao[1] == "vertical" then
		navioTamanhoDois.tamanho = {{2}, {2}}

	end
	return navioTamanhoDois
end

navioTamanhoDois:createNavio()

function mostrarNavio(navio)
	local strNavio = ""

	for i=1, #navio.tamanho do
		for j=1,#navio.tamanho[i] do
			strNavio = strNavio .. navio.tamanho[i][j] .. "\n"
		end
	end
	return strNavio
end

print(mostrarNavio(navioTamanhoDois))

local navioTamanhoTres = {
	tamanho = {},
	posicao = {"vertical" , "horizontal"}
}

local navioTamanhoQuatro = {
	tamanho = {},
	posicao = {"vertical" , "horizontal"}
}

local navioTamanhoCinco = {
	tamanho = {},
	posicao = {"vertical" , "horizontal"}
}

local navioTamanhoUm = {
	tamanho = {}
}

function navioTamanhoUm:createNavio()

	return navioTamanhoUm.tamanho = {1}

end

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

function mostrarNavio(navio)
	local strNavio = ""

	for i=1, #navio.tamanho do
		strNavio = strNavio .. navio.tamanho[i] .. " "
	end
	return strNavio
end

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

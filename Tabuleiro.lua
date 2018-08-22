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
	return tabuleiro
end

function tabuleiro:viewTabuleiro(tabuleiro)
	local srt = ""
	for i=1, #tabuleiro do
		for j=1, #tabuleiro[i] do
	
			srt = srt .. tabuleiro[i][j]
		
		end
			srt = srt .. "\n"
	end

	return str

end 

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







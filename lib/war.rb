class War
	def initialize
	 	@resultado="Comienza la partida"
		@Cartas  = ["1R","2R","3R","4R","5R","6R","7R","8R","9R","10R","1N","2N","3N","4N","5N","6N","7N","8N","9N","10N"]
		@CartasMezcladas = []
		@CartasA = []
		@CartasB = []
		@CartaA = 0
		@CartaB = 0
		@indA = 0
		@indB = 0
	end

	def Resultado
		return @resultado
	end

	def TurnoA(valor)
		@CartaA = valor
		@resultado = "#{ @CartaA }"
	end

	def TurnoB(valor)
		@CartaB = valor
		@resultado = "#{ @CartaB }"
	end
		
	def Comparar
		if @CartaA > @CartaB
			@resultado = "Ganador A"
		else
			if @CartaA == @CartaB
				@resultado = "Empate"
			else
				@resultado = "Ganador B"
			end
		end
	end

	def Mezclar
		@CartasMezcladas = ["1R","2N","3R","4N","5R","6N","7R","8N","9R","10N","1N","2R","3N","4R","5N","6R","7N","8R","9R","10N"]
		@resultado = "Mezclado"
	end

	def Repartir
		@indA = 0
		@indB = 0

		@CartasMezcladas.each_with_index {|carta,i| DarCarta(carta, i)}
		@resultado = "Ok"

	end

	def DarCarta(val, pos)
		if pos % 2 == 0
			@indA += 1
			@CartasA[@indA - 1] = val
		else
			@indB += 1
			@CartasB[@indB - 1] = val
		end 
	end

end




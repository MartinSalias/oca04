class War
	def initialize
	 	@resultado="Comienza la partida"
		#@Rojas  = lista["1R","2R","3R","4R","5R","6R","7R","8R","9R","10R"]
		#@Negras = lista["1N","2","3","4","5","6","7","8","9","10"]
		@CartaA = 0
		@CartaB = 0
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
			

end




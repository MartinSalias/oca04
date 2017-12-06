class War
	def Initialize
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

	def TurnoA valor=0
		if valor == 0
			@CartaA = @CartasA[0]
			@resultado = "#{ @CartaA }"
			@CartasA.each_with_index {|carta,i| @CartasA[i] = @CartasA[i+1]}
		else
			@CartaA = valor.to_s
			@resultado = @CartaA
		end
	end

	def TurnoB valor = 0
		if valor == 0
			@CartaB = @CartasA[0]
			@resultado = "#{ @CartaB }"
			@CartasB.each_with_index {|carta,i| @CartasB[i] = @CartasB[i+1]}
		else
			@CartaB = valor.to_s
			@resultado = @CartaB
		end
	end
		
	def Comparar
		if @CartaA == @CartaB
			@resultado = "Empate"
		elsif @CartaA > @CartaB
			@resultado = "Ganador A"
		else
			@resultado = "Ganador B"
		end

		return

		if @CartaA[0] > @CartaB[0]
			@resultado = "Ganador A"
			@CartasA.push @CartaA
			@CartasA.push @CartaB
		else
			if @CartaA[0] == @CartaB[0]
				@resultado = "Empate"
			else
				@resultado = "Ganador B"
				@CartasB.push @CartaA
				@CartasB.push @CartaB
			end
		end
	end

	def Mezclar
		@CartasMezcladas = ["1R","2N","3R","4N","5R","6N","7R","8N","9R","1N","2R","3N","4R","5N","6R","7N","8R","9R"]
		@resultado = "Mezclado"
	end

	def Repartir
		indA = 0
		indB = 0

		@CartasMezcladas.each_with_index do |carta,i| 
			DarCarta(carta, i)

			if i % 2 == 0
				@CartasA[indA] = carta
				indA += 1
			else
				@CartasB[indB] = carta
				indB += 1
			end 
		end

		@resultado = "Ok"

	end

	def DarCarta(val, pos)
	end

end



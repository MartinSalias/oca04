require "./lib/war.rb"

describe "War" do
	it "Inicio de juego" do
		juego= War.new
		juego.Resultado.should == "Comienza la partida"
	end

	it "Turno A" do
		juego= War.new
		juego.TurnoA(6)
		juego.Resultado.should == "6"
	end

	it "Turno B" do
		juego= War.new
		juego.TurnoB(7)
		juego.Resultado.should == "7"
	end

	it "Comparar Gana A" do
		juego= War.new
		juego.TurnoA(8)
		juego.TurnoB(7)
		juego.Comparar
		juego.Resultado.should == "Ganador A"
	end

	it "Comparar Gana B" do
		juego= War.new
		juego.TurnoA(7)
		juego.TurnoB(9)
		juego.Comparar
		juego.Resultado.should == "Ganador B"

	end

	it "Comparar Empate" do
		juego= War.new
		juego.TurnoA(7)
		juego.TurnoB(7)
		juego.Comparar
		juego.Resultado.should == "Empate"
	end

	it "Guerra" do
		juego= War.new
		juego.TurnoA(7)
		juego.TurnoB(7)
		juego.Comparar
		juego.TurnoA(8)
		juego.TurnoB(7)
		juego.Comparar
		juego.Resultado.should == "Ganador A"
	end

end

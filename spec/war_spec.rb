require "./lib/war.rb"

describe "War" do
	it "Inicio de juego" do
		juego= War.new
		juego.Resultado.should == "Comienza la partida"
	end

	it "Turno A" do
		juego= War.new
		juego.TurnoA
		juego.Resultado.should == "5"
	end

	it "Turno B" do
		juego= War.new
		juego.TurnoB
		juego.Resultado.should == "5"
	end

	it "Comparar Gana B" do
		juego= War.new
		juego.TurnoA
		juego.TurnoB
		juego.Comparar
		juego.Resultado.should == "Empate"
	end

end

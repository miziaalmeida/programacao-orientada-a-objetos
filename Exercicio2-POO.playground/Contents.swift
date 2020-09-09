import Cocoa

//Classe pai Veículo e cria um método para calcular o combustível

class Veiculo {
    var cor: String
    var preco: Double
    var passageiros: Int
    init(cor: String, preco: Double, passageiros: Int){
        self.cor = cor
        self.preco = preco
        self.passageiros = passageiros
    }
    func getCombustivel(distancia: Double) -> Double {
        return distancia * Double(passageiros)
    }
}

//Class Filho: Carro, e sobreescreve a funcao getCombustivel substituindo passageiros pela qtdCombustivel

class Carro: Veiculo{
    var tamRodas: Int
    init(cor: String, preco: Double, passageiros: Int, tamRodas: Int){
    self.tamRodas = tamRodas
        super.init(cor: cor, preco: preco, passageiros: passageiros)
    }
    override func getCombustivel(distancia: Double) -> Double {
    let qtdCombustivel = super.getCombustivel(distancia: distancia)
    return qtdCombustivel
    }
}

//Class Filho: Carro, e sobreescreve a funcao getCombustivel

class Aviao: Veiculo{
    var piloto: String
    var companhia:String
    init(cor: String, preco: Double, passageiros: Int, piloto:String, companhia:String){
        self.piloto = piloto
        self.companhia = companhia
            super.init(cor: cor, preco: preco, passageiros: passageiros)
    }
    override func getCombustivel(distancia: Double) -> Double {
        let qtdCombustivel = super.getCombustivel(distancia: distancia)
        return qtdCombustivel
    }
}



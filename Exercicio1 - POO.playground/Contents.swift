import Cocoa

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    init(nome: String, salario: Double, cpf: String){
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    func calculo() -> Double {
        return salario
    }
}
class Programador: Funcionario {
    var plataforma: String
    var bonus: Double
    init(nome: String, salario: Double, cpf: String, plataforma: String, bonus: Double){
        self.plataforma = plataforma
        self.bonus = bonus
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculo() -> Double {
        let salarioFinal = super.calculo()
        return (salarioFinal * 12) * 0.20
    }
}
class Designer: Funcionario {
    var ferramentaPreferida: String
    var bonus: Double
    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String, bonus: Double){
        self.ferramentaPreferida = ferramentaPreferida
        self.bonus = bonus
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculo() -> Double {
        let salarioFinal = super.calculo()
        return (salarioFinal * 12) * 0.15
    }
}

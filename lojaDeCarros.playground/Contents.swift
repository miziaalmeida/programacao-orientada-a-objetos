// Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja.
// No momento, eles tem 50 carros em estoque. Para sair um carro do estoque, esse carro precisa ser vendido,
// não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
// A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
// A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.

import Cocoa

public class vendaCerta {
    
    private var estoque: Int
    
    init(estoque: Int) {
        self.estoque = estoque
    }
    
    func vender(qtdCarro: Int) -> Int {
        if qtdCarro == 0{
            print("Bonificacao para loja: 2 carros")
            estoque += 2
        } else if qtdCarro >= 5 {
            estoque += 1
            print("Bonificacao para loja: 1 carro")
        }
        estoque = estoque - qtdCarro
        return estoque;
    }
}


let venda1 = vendaCerta(estoque: 50)

print(venda1.vender(qtdCarro: 1))
print(venda1.vender(qtdCarro: 5))
print(venda1.vender(qtdCarro: 44))
print(venda1.vender(qtdCarro: 2))
print(venda1.vender(qtdCarro: 3))



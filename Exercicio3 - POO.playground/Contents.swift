import Cocoa

public class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoConta: Double
    
    init(nome:String,
         idade: Int,
         cpf: String,
         saldoConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoConta = saldoConta
    }
    
    func getSaldo() {
        
        print("O saldo é de R$ \(self.saldoConta)")
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        
        if tipoDePeca == "terno" {
           
            //Custo 400
            if quantidadeDePecas >= 3 {
                
                let desconto = 50.00 * Double(quantidadeDePecas)
                let valorVenda = (400.00  * Double(quantidadeDePecas) ) - desconto
                self.saldoConta +=  valorVenda
                
                print("Parabéns você ganhou \(desconto) de desconto!!")
                
            } else {
              
                let valorVenda = (400.00 * Double(quantidadeDePecas))
                self.saldoConta  = saldoConta + valorVenda
            }
            
            
        } else if tipoDePeca == "vestido" {
            
           //Custo 900
           if quantidadeDePecas == 5 {
                
              let valorVenda = (900.00 * Double(quantidadeDePecas) - 250.00)
              self.saldoConta  = saldoConta + valorVenda
            
              print("Você acaba de ganhar um véu de brinde!!")
           
           } else {
           
                let valorVenda = 900.00 * Double(quantidadeDePecas)
                self.saldoConta  = saldoConta + valorVenda
           }
            
            
        } else {
           
                 
            if quantidadeDePecas >= 2 {
              
                
                if quantidadeDePecas % 2 == 0 {
                   
                    let qtdDoada = Double((quantidadeDePecas/2))
                    let valorVenda = Double(quantidadeDePecas) * 50.00
                    self.saldoConta  = saldoConta + valorVenda
                    print("Parabéns você ganhou \(qtdDoada) bonés")
                    
                } else {
                 
                    let valorVenda = Double(quantidadeDePecas) * 50.00
                    let qtdDoada = (quantidadeDePecas/2)
                  
                    self.saldoConta  = saldoConta + valorVenda
                 
                    print("Parabéns você ganhou \(qtdDoada) bonés")
                    
                }
              
                
            } else {
                
                let valorVenda = 50.00 * Double(quantidadeDePecas)
                self.saldoConta  = saldoConta + valorVenda
                
            }
            
            
        }
        
    }
    
}

let joao = Vendedor(nome: "Joao", idade: 25, cpf: "1111", saldoConta: 1000)
joao.vender(quantidadeDePecas: 7, tipoDePeca: "bone")
joao.getSaldo()

let maria = Vendedor(nome: "maria", idade: 25, cpf: "1111", saldoConta: 1000)
maria.vender(quantidadeDePecas: 5, tipoDePeca: "vestido")
maria.getSaldo()

let jose = Vendedor(nome: "Jose", idade: 25, cpf: "11231", saldoConta: 1500)
jose.vender(quantidadeDePecas: 7, tipoDePeca: "terno")
jose.getSaldo()



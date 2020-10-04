# Aulas - Programação Orientada a Objetos
- Programação Orientada a Objetos  | Digital House | Santander Mobile iOS
- Aplicação de override e desenho das classes com esta opcão
- Polimorfismo e aplicabilidade
- Encapsulamento, public e private, get e set

## **Exercício 1 - Aula de POO** - 04/09/20
### Created by: Grazieli Berti, Mízia Lima e Paola Pagotto

* Definir uma classe **Funcionário** com **nome, salário** e **cpf**, depois defina as classes **Programador** que tem **plataforma de trabalho(ex: Android, Web, iOS)**, e uma classe **Designer** que tem **ferramenta preferida(ex: Photoshop, Sketch, Gimp)**. Ambos tem um _bônus anual_ baseado no **salário**, **Programador recebe 20% e Designer recebe 15%**, faça um _método que calcule o bônus anual e mostre o valor do bônus na tela_. Use polimorfismo para resolver este problema.


## **Exercício 2 - Aula de POO** - 09/09/20
### Created by: Grazieli Berti, Mízia Lima e Paola Pagotto

* Definir uma classe **Veículo** com **cor, preço** e **quantidade de passageiros**, depois defina as classes **Carro** que tem **tamanho das rodas**, e  **Avião** que tem **piloto e companhia aérea**. Queremos descobrir a  _quantidade de combustível que cada um dos veículos gasta por viagem_ , defina  um método que recebe como parâmetro a _distância em **Km**_ e calcule a _quantidade de combustível_.
- Carro: **tamanho das rodas * quantidade de passageiros * distancia**
- Avião: **quantidade de passageiros * distancia**

## **Exercício 3 - Aula de POO** - 11/09/20
### Created by: César Tavares, Marcela Saidel e Mízia Lima.

* Um vendedor de loja e possui **nome, idade e cpf, saldo em conta** vende em sua loja ternos, vestidos e bonés, definir um método **vender(quantidadeDePecas: Int, tipoDePeca: String)**.
- Cada terno custa R$ 400,00 caso o cliente compre 3 ou mais ternos, ele recebe R$50 de desconto em cada terno;
- Cada vestido custa R$ 900,00 caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde. Que custa R$ 250,00;
- Cada boné custa R$ 50,00, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro. 
**encapsule todos os métodos necessários.**

## **Exercício 4 - Loja de Carros** -  11/09
Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja. No momento, eles tem 50 carros em estoque.
Para sair um carro do estoque, esse carro precisa ser vendido, não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja. 
A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.

**Teste de mesa:**
- tem 50
- - se vende 1 fica com 49
- tem 49
- - se vende 5 fica com 44
* ganha 1 da fábrica
- - tem 45
* vende 44 fica com 1
* ganha 1 da fábrica
- - tem 2
* vende 2 fica com 0
* ganha 2 da fábrica
- - tem 2

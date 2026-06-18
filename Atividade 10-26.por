programa {
  cadeia nomes[5]
  inteiro estoque[5]
  real precos[5]
  inteiro i

  funcao vazio carregarEstoque(){
    para(i=0;i<=4;i++){
      escreva("Digite o nome do produto ",i,": ")
      leia(nomes[i])
      escreva("Digite a quantidade em estoque do produto ",i,": ")
      leia(estoque[i])
      escreva("Digite o preço do produto ",i,": ")
      leia(precos[i])
    }
  }

  funcao vazio consultarProduto(){
    cadeia busca
    escreva("Digite o nome do produto que deseja consultar: ")
    leia(busca)

    para(i=0;i<=4;i++){
    se(busca == nomes[i]){
      escreva("Produto: ", nomes[i], "\n")
      escreva("Quantidade em Estoque: ", estoque[i], "\n")
      escreva("Preço do produto: R$", precos[i], "\n")
    }
   }
   
  }

  funcao real calculoMaisCaro(){
    real maisCaro=0

    para(i=0;i<=4;i++){
      se(precos[i]>precos[maisCaro]){
        maisCaro = i
      }
    }
    retorne maisCaro
  }

  funcao vazio relatorioMaisCaro(){
    inteiro resposta

    resposta = calculoMaisCaro()

    escreva("======Produto mais caro======\n")
    escreva("Produto: ", nomes[resposta], "\n")
    escreva("Quantidade em estoque: ", estoque[resposta], "\n")
    escreva("Preço do produto: R$", precos[resposta], "\n")
  }
  funcao inicio() {
    inteiro opcao

    faca{
    escreva("\n=======CONTROLE DE ESTOQUE=======\n")
    escreva("1--Carregar Estoque\n")
    escreva("2--Consultar Produto\n")
    escreva("3--Relatório Produto Mais Caro\n")
    escreva("0--Sair\n")
    
    escreva("Escolha uma opção: ")
    leia(opcao)

      escolha(opcao){
      caso 1: carregarEstoque()
      pare
      caso 2: consultarProduto()
      pare
      caso 3: relatorioMaisCaro()
      pare
    } 
    }enquanto(opcao != 0)
    
  }
}

=begin
Dadas três pilhas de números positivos,
a tarefa é encontrar a soma máxima igual possível das pilhas com a remoção dos
elementos superiores permitidos. As pilhas são representadas como uma matriz e o
primeiro índice da matriz representa o elemento superior da pilha.

Exemplos: 

Entrada: pilha1[] = { 3, 10}
  pilha2[] = { 4, 5 }
  pilha3[] = { 2, 1 }
Saída: 0
A soma só pode ser igual depois de remover todos os elementos
de todas as pilhas.
=end
contador = 0
pilha1 = [0]
pilha2 = [4,3,2]
pilha3 = [2,5,4,1]

pilhas = [pilha1, pilha2, pilha3]

somatorioPilha1 = pilhas[0].inject(0, :+)
somatorioPilha2 = pilhas[1].inject(0, :+)
somatorioPilha3 = pilhas[2].inject(0, :+)

arraySomatorios = [somatorioPilha1, somatorioPilha2, somatorioPilha3]

until((somatorioPilha1 == somatorioPilha2) && (somatorioPilha1 == somatorioPilha3) && (somatorioPilha2 == somatorioPilha3) )
  maiorSomatorio = arraySomatorios.max 
  indicePilhaMaiorSomatorio = arraySomatorios.index(maiorSomatorio)
  pilhaMaiorSomatorio=pilhas[indicePilhaMaiorSomatorio]
  pilhaMaiorSomatorio.delete_at(0)

  somatorioPilha1 = pilhas[0].inject(0, :+)
  somatorioPilha2 = pilhas[1].inject(0, :+)
  somatorioPilha3 = pilhas[2].inject(0, :+)
  arraySomatorios = [somatorioPilha1, somatorioPilha2, somatorioPilha3]

  if pilha1.empty?
    pilha1 = 0
  end
  if pilha2.empty?
    pilha2 = 0
  end
  if pilha3.empty?
    pilha3 = 0
  end

  pilhas = [pilha1, pilha2, pilha3]

  p pilhas

  p somatorioPilha1 
  p somatorioPilha2 
  p somatorioPilha3

  if (somatorioPilha1 == somatorioPilha2 && somatorioPilha1 == somatorioPilha3 && somatorioPilha2 == somatorioPilha3 )
  p "a soma máxima igual das 3 pilhas é #{somatorioPilha1}"
  end
end

# este exercícios está dando erro no inject quando o array fica vazio e não estou
# sabendo como resolver






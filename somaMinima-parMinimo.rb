#https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/

# Dada uma matriz A[] de n elementos. 
# Precisamos selecionar dois elementos adjacentes e excluir o maior deles 
# e armazenar o menor deles em outro array, digamos B[]. 
# Precisamos realizar esta operação até que a matriz A[] contenha apenas um único elemento. 
# Finalmente, temos que construir o array B[] de forma que a soma total de seus elementos seja mínima. 
# Imprima a soma total da matriz B[]

=begin 
Existe um truque fácil para resolver esta questão que é sempre escolher o menor elemento do array A[] e seus adjacentes, deletar o elemento adjacente e copiar o menor para o array B[]. Novamente, para a próxima iteração, temos o mesmo menor elemento e qualquer elemento adjacente aleatório que deve ser excluído. Após n-1 operações, todos os elementos de A[] foram excluídos, exceto o menor e, ao mesmo tempo, o array B[] contém “n-1” elementos e todos são iguais ao menor elemento do array A[]. 
Assim, a soma total da matriz B[] é igual ao menor * (n-1) . 
=end

matrizA = [2,6,4,9,11,3,7,15]

# Primeiro achar o menor número do array e seu índice

def somaMinima (matrizA)
    menorNumero = matrizA.min
    indiceMenorNumero = matrizA.index(menorNumero)
    matrizB = []

    while matrizA.size > 1
        if matrizA[-1] == matrizA[indiceMenorNumero]
            matrizB.push(matrizA[indiceMenorNumero])
            matrizA.delete_at(indiceMenorNumero - 1)
        else 
            matrizB.push(matrizA[indiceMenorNumero])
            matrizA.delete_at(indiceMenorNumero + 1)
        end
    end

    #soma matriz B
    somatorioMatrizB = matrizB.inject(:+)

p  matrizA 
p  matrizB 
p somatorioMatrizB

end

somaMinima(matrizA)
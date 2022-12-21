# Algoritmo de Pesquisa Binária: 
# As etapas básicas para realizar a Pesquisa Binária são:

# Comece com o elemento intermediário de toda a matriz como uma chave de pesquisa.
# Se o valor da chave de pesquisa for igual ao item, retorne um índice da chave de pesquisa.
# Ou se o valor da chave de pesquisa for menor que o item no meio do intervalo, 
# reduza o intervalo para a metade inferior.
# Caso contrário, reduza-o para a metade superior.
# Verifique repetidamente a partir do segundo ponto até que o valor seja
# encontrado ou o intervalo esteja vazio.

# binarySearch(arr, x, baixo, alto)
# repita até baixo = alto
#        médio = (baixo + alto)/2
#            if (x == arr[meio])
#            retorno no meio

#            else if (x > arr[mid]) // x está no lado direito
#                baixo = médio + 1

#            else // x está no lado esquerdo
#                alto = médio - 1


numeros = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]    

puts "digite um número para achar seu índice"
x = gets.chomp.to_i

baixo = 0
alto = numeros.length - 1 # >9

while alto != baixo
    medio = ((baixo + alto).to_i / 2).ceil(0)

    #verificação do que aconteceu no código:
    puts "baixo: #{baixo}, alto: #{alto}, medio: #{medio}"

    if x == numeros[medio]
        return puts "o número #{x}, tem índice #{medio}"
        break
    elsif x > numeros[medio] 
        baixo = medio + 1
        medio = ((baixo + alto).to_i / 2).ceil(0)
        if x == numeros[medio]
            return puts "o número #{x}, tem índice #{medio}"
            break
        end
    else
        alto = medio -1
        medio = ((baixo + alto).to_i / 2).ceil(0)
        if x == numeros[medio]
            return puts "o número #{x}, tem índice #{medio}"
            break
        end
    end
end

puts "número não encontrado"
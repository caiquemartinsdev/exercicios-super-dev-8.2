#Desafio de criar um algoritmo de pesquisa linear
#https://www.geeksforgeeks.org/searching-algorithms/


# Exemplos:

# Entrada: arr[] = {10, 20, 80, 30, 60, 50,110, 100, 130, 170}, x = 110;
# Saída: 6
# Explicação: O elemento x está presente no índice 6

numeros = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

puts ("digite o número que você procura:")
procurar = gets.chomp.to_i

#METODO 1 DE RESOLUÇÃO ==========
# contador = 0 

# while contador < (numeros.length)

#     if (procurar == (numeros[contador]))
#         puts "O elemento #{procurar} esta no indice #{contador}"
#         contador = contador + 1
#         break
#     elsif contador == (numeros.length - 1)
#         puts "O elemento não foi encontrado no array"
#         contador = contador + 1
#     else 
#  #       p "else procurar:#{procurar} numero: #{numeros[contador]}"
#         contador = contador + 1
#     end
# end

#=====================

#METODO 2, usando .index()

puts numeros.index(procurar)




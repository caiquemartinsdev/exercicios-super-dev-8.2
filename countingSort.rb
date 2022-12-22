#
array = [1,4,1,2,3,9,5,2,10,3,3,4,6,12]
contagem =[]

def countingSort(array,contagem)
    arrayFinal =[]
    maiorNumeroArray = array.max + 1
# criar array de contagem zerado
    maiorNumeroArray.times do |i|
        contagem[i] = 0
    end
# colocando a quantidade de cada número no array "contagem", que é o que fica o número de vezes que cada
# numero se repete
    for i in array do
        if contagem[i] > 0
            contagem[i] = contagem[i] + 1
        else contagem[i] == 0
            contagem[i] = 1
        end
    end
# agora pegamos o array de contagem e montamos o array final
    contagem.each_with_index do |element, index|       
        if element > 0
            contador = 0
            while element > contador
                arrayFinal.push(index)
                contador += 1            
            end
        end
    end

p "array inicial #{array}"
p "array contagem #{contagem}"
p "array final #{arrayFinal}"

end

countingSort(array,contagem)




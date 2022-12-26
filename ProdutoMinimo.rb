=begin
Dado o array a, temos que encontrar o produto mínimo possível com o subconjunto de elementos
presentes no array. O produto mínimo também pode ser um único elemento.

Exemplos: 

Entrada: a[] = { -1, -1, -2, 4, 3 }
Saída: -24
Explicação: O produto mínimo será ( -2 * -1 * -1 * 4 * 3 ) = -24

Entrada: a[] = { -1, 0 }
Saída: -1
Explicação: -1(elemento único) é o produto mínimo possível

 Entrada: a[] = { 0, 0, 0 }
Saída: 0

Se houver um número par de números negativos e nenhum zero,
o resultado será o produto de todos, exceto o número negativo de maior valor.

Se houver um número ímpar de números negativos e nenhum zero,
o resultado é simplesmente o produto de todos.

Se houver zeros e positivo, nenhum negativo, o resultado é 0.
O caso excepcional é quando não há número negativo e todos os outros elementos positivos,
então nosso resultado deve ser o primeiro número positivo mínimo.
=end

array = [ -1,-1]

#montar array de negativos
arrayNegativos = []
array.map do |i|
    if i < 0
        arrayNegativos << i
    end
end

# verificar zeros
temZero = array.any? { |n| n == 0 }
tamanhoNegativos = arrayNegativos.length

# ver execeção, se todos os números são maiores que zero
todosMaioresZero = array.all? { |n| n > 0}

p "Array #{array}"
p "ArrayNegativos #{arrayNegativos}"
p "tamanho negativos #{tamanhoNegativos}"


if todosMaioresZero
    p "1 O menor número produto do array será #{array.min}"

elsif temZero && tamanhoNegativos == 0
    p "2 O menor número produto do array será 0"

elsif tamanhoNegativos.even? && (temZero || temZero == false)
    menorNegativo = arrayNegativos.max
    indexMenorNegativo = array.index(menorNegativo)
    array.delete_at(indexMenorNegativo)
    array.delete(0)
    p "3 O menor número produto do array será #{array.inject(:*)}"

else tamanhoNegativos.odd? && (temZero || temZero == false)
    array.delete(0)
    p "4 O menor número produto do array será #{array.inject(:*)}"
    
end



# p tamanhoNegativos
# p array
# p arrayNegativos
# p temZero
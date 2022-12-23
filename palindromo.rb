#verificar se uma palavra é palindromo

p "digite uma palavra para verificar se ela é um palíndromo"
palavra = gets.chomp.downcase


def palindromo(palavra)
    if palavra == palavra.reverse
       p "a palavra #{palavra} é um palíndromo"
    else
       p  "a palavra #{palavra} não é um palíndromo"
    end
end

palindromo(palavra)
#pangram

alfabeto = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

puts "digite a frase que deseja verificar se é um pangram:"

frase = gets

letrasFaltantes = []
contagemFrase = 0
contagemAlfabeto = 0

while contagemAlfabeto <= 27
    puts "letra: #{alfabeto[contagemAlfabeto]}"

    if ((letrasFaltantes.empty? == true) && (contagemAlfabeto == 27))
    puts "Esta frase é um pangram pois tem todas as letras do alfabeto" 
    contagemAlfabeto = (contagemAlfabeto + 1)

    elsif contagemAlfabeto == 27
    puts "A frase é: #{frase}\nAs letras que faltam são: #{letrasFaltantes}"
    contagemAlfabeto = (contagemAlfabeto + 1)

    elsif alfabeto[contagemAlfabeto] == frase[contagemFrase]
        contagemAlfabeto = (contagemAlfabeto + 1)
        contagemFrase = 0

    elsif (alfabeto[contagemAlfabeto] != frase[contagemFrase]) && (contagemFrase < frase.length)
        contagemFrase = (contagemFrase + 1)

    else (contagemFrase == frase.length)
        letrasFaltantes.push(alfabeto[contagemAlfabeto])
        contagemAlfabeto = (contagemAlfabeto + 1)
        contagemFrase = 0
    end
end


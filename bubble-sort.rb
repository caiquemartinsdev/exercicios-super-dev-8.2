# BUBBLE SORT

list = [4,56,1,34,79,22]

# Exemplo excelente que encontrei no Stack Over Flow:


    def bubble_sort(list)
        #return list if list.size <= 1 # already sorted
        swapped = true
        while swapped do
            puts "passou aqui!!!"
          swapped = false
          0.upto(list.length-2) do |i|
            if list[i] > list[i+1]

                estado = list[i]
                list[i] = list[i+1]
                list[i+1] = estado
                
              swapped = true
            end
          end    
        end
      
        list
      end


#MEU CÓDIGO








      bubble_sort(list)
      p list
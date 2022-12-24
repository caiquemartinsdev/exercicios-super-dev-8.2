# Criar um classe responsável para representar Contas Bancarias
# Criar um método que permita transferir valor entre contas usando:
# conta1.transferir(conta2,50)"
# Onde 100 é o valor que eu desejo transferir

class ContaBancaria
    attr_accessor :nome, :saldo

    def initialize (nome,saldo)
        @nome = nome
        @saldo = saldo
        
    end

    def transferir(outra_conta,valor)
        debitado(valor)
        outra_conta.depositar(valor)
    end

    def saldo
        @saldo
    end

    def debitado(valor_debito)
        @saldo -= valor_debito
    end

    def depositar(valor_deposito)
        @saldo += valor_deposito
    end

end

conta1 = ContaBancaria.new("nome-pessoa1", 100)
conta2 = ContaBancaria.new("nome-pessoa2", 200)

conta1.transferir(conta2, 50)

p conta1.saldo 
p conta2.saldo

conta2.transferir(conta1,1000)

p conta1.saldo
p conta2.saldo
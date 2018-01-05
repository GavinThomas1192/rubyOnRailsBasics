class BankAccount
    attr_reader :name
    def initialize(name)
        @name = name
        @transactions = []
        add_transaction("Beginning Balance", 0)
    end

    def add_transaction(desciption, amount)
        @transactions.push(desciption: desciption, amount: amount)
    end

    def credit(desciption, amount)
        add_transaction(desciption, amount)
    end
    def debit(desciption, amount)
        add_transaction(desciption, -amount)
    end

    def balance 
        balance = 0
        @transactions.each do |transactions|
            balance += transactions[:amount].to_i
        end
        balance
    end
end

bank_account = BankAccount.new("Gavin Thomas")

bank_account.credit("Paycheck", 400)
bank_account.debit('ice cream', 34)

puts bank_account.balance

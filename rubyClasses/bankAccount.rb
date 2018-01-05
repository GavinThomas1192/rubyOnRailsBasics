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
            balance += transactions[:amount]
        end
        balance
    end

    def print_register
        puts "#{name}'s Bank Account"

        puts "Descriptions\tAmount"
        @transactions.each do |transactions|
            puts transactions[:desciption] + "\t" + sprintf("%0.2f", transactions[:amount].to_s)
        end
    end 

    # this make sit so we can just call bank_account and NOT bank_account.balance, etc
    def to_s
        "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
    end
end

bank_account = BankAccount.new("Gavin Thomas")

bank_account.credit("Paycheck", 400)
bank_account.debit('ice cream', 34)

# no clue, but adds double float
puts bank_account
bank_account.print_register

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

        puts "Description".ljust(30) + "Amount".rjust(10)
        puts "-" * 60
        @transactions.each do |transactions|
            puts transactions[:desciption].ljust(30) + "\t" + sprintf("%0.2f", transactions[:amount]).rjust(10)
        end
        puts "-" * 60
        puts "Current Balance: ".ljust(30) + "#{sprintf("%0.2f", balance)}".rjust(10)
    end 

    # this make sit so we can just call bank_account and NOT bank_account.balance, etc
    def to_s
        "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
    end
end

bank_account = BankAccount.new("Gavin Thomas")

bank_account.credit("Paycheck", 400)
bank_account.debit('ice cream', 34)
bank_account.debit("Gas", 27.88)

# no clue, but adds double float
# puts bank_account
bank_account.print_register

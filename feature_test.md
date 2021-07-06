        irb

        require './lib/account.rb'

        account = Account.new

        account.deposit(1000.00)

        account.deposit(2000.00)

        account.withdraw(500.00)

        account.print_statement


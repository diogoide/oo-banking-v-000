class BankAccount
  attr_accessor :balance, :status, :value
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(value)
    @balance = value + 1000
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @status = "open" && @balance > 0
      true
      end
    end 
end

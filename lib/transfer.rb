class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.valid?
      @sender.balance = 1000 - @amount
      @receiver.balance = 1000 + @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction reject. Please chekc your account balance."
    end
  end

end

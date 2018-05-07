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

  def both_valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
   if self.both_valid? && self.status != "complete" && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please chekc your account balance."
    end
  end

end

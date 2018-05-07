class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.status == "open" && @sender.balance > 0 && @receiver.status == "open" && @receiver.balance > 0
      true
    else
      false
    end
  end

end

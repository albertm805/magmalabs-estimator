Spree::Order.class_eval do
  checkout_flow do
    go_to_state :address, :if => lambda { |order| order.address_required? } 
    go_to_state :payment, :if => lambda { |order| order.payment_required? }
    go_to_state :confirm, :if => lambda { |order| order.confirmation_required? }
    go_to_state :complete
  end
  def address_required?
    false
  end

  # If true, causes the payment step to happen during the checkout process
  def payment_required?
    false
  end

  # If true, causes the confirmation step to happen during the checkout process
  def confirmation_required?
    true
  end

end
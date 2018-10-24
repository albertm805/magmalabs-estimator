Spree::Order.class_eval do
  checkout_flow do
    go_to_state :payment, :if => lambda { |order| order.payment_required? }
    go_to_state :confirm, :if => lambda { |order| order.confirmation_required? }
    go_to_state :complete
  end
  
  def payment_required?
    false
  end

  def confirmation_required?
    true
  end

end
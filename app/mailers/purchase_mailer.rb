class PurchaseMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def purchase_notification(email, item)
    recipients  email
    from        "webmaster@mattsfakestore.com"
    subject     "Thank you for your order."
    body        :item => item
  end
  
  def shipping_notification(address, item)
    recipients  "shipping@mattsfakestore.com"
    from        "webmaster@mattsfakestore.com"
    subject     "Packing slip"
    body        :item => item, :address => address
  end
  
  def royalty_notification(address, item)
    recipients  "royalty@mattsfakestore.com"
    from        "webmaster@mattsfakestore.com"
    subject     "Duplicate Packing Slip"
    body        :item => item, :address => address
  end
end

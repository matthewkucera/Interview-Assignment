class Book < Item
  def purchase(email, address)
    PurchaseMailer.deliver_shipping_notification(address, self)
    PurchaseMailer.deliver_royalty_notification(address, self)
    return
  end
end

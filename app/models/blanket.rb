class Blanket < Item
  def purchase(email, address)
    PurchaseMailer.deliver_shipping_notification(address, self)
    return
  end
end

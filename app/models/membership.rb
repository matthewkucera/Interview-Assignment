class Membership < Item
  def purchase(email, address)
    PurchaseMailer.deliver_purchase_notification(email, self)
    return
  end
end

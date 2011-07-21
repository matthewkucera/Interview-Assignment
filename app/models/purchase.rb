class Purchase < ActiveRecord::Base
  validates :item_name,  :presence => true
  validates :email,  :presence => true
  
  
  def purchase_item
    #not happy about the ifs here, if there are a lot of product types this will get very large and unmanageable
    #probably refactor to generic item class with specific item classes that specify what purchase does
    if @item_type == "pencil"
      Pencil.purchase(@item_name)
    elsif @item_type == "book"
      Book.purchase(@item_Name)
    elsif @item_type == "membership"
      Membership.purchase("@item_name")
    end
  end
end

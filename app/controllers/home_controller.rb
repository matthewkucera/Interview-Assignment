class HomeController < ApplicationController
  def index
    @pencils = Pencil.all
    @books = Book.all
    @memberships = Membership.all
  end

end

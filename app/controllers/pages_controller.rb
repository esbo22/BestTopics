class PagesController < ApplicationController
  def home
    set_title
    @username = "tintin"
    @products = ["journal", "Appareil photo"]
  end

  def about
    set_title
  end

  def contact
    set_title
  end
end

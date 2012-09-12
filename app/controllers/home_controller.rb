class HomeController < ApplicationController
  def index
    @inscription = Inscription.new
    index_page
  end
end

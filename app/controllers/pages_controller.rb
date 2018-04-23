class PagesController < ApplicationController
  def index
      @clients = Client.all
  end
end

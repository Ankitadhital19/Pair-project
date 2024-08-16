class HomesController < ApplicationController
  def index
    @organizations = Organization.all
  end
end

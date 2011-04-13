class HomesController < ApplicationController
  def index
    @requests = Request.all
  end

end

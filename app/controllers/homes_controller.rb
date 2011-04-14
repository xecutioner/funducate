class HomesController < ApplicationController
  def index
    @needy_requests = Request.get_needy_requests
  end

end

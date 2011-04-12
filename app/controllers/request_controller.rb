class RequestController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
  end

  def new
    @person = Person.find(param[:id])
    @request = @person.request.new
  end

  def create
    @person = Person.find(param[:id])
    @request = @person.request.create(params[:request])
    if @request.save
      redirect_to request_home_path(current_request)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def home
  end

end

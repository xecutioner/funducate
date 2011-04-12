class RequestsController < ApplicationController
  def index
    @person = Person.find(params[:person_id])
    @requests = Request.all
  end

  def show
  end

  def new
    @person = Person.find(params[:person_id])
    @request = @person.requests.new
  end

  def create
    @person = Person.find(param[:person_id])
    @request = @person.requests.create(params[:request])
    if @request.save
      redirect_to request_home_path
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

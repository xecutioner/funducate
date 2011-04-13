class RequestsController < ApplicationController
  before_filter :authenticate_person!, :except => [:show,:index,:home]
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
    @person = Person.find(params[:person_id])
    @request = @person.requests.create(params[:request])
    if @request.save
      redirect_to request_home_path, :notice => "Your Request was successfully created"
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

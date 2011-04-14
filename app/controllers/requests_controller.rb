class RequestsController < ApplicationController
  before_filter :authenticate_person!, :except => [:show,:index,:home]

  def index
    @requests = Request.paginate(:conditions => ["deadline >= '#{Date.today}'"], :page => params[:page])
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @person = Person.find(params[:person_id])
    @request = @person.requests.new
  end

  def create
    @person = Person.find(params[:person_id])
    @request = @person.requests.create(params[:request])
    if @request.save
      redirect_to homepage_path, :notice => "Your Request was successfully created"
    else
      render 'new', :alert => "OOPS!!! something went wrong, Try Again !!!"
    end
  end

  def edit
    @person = Person.find(params[:person_id])
    @request = @person.requests.find(params[:id])
  end

  def update
    @person = Person.find(params[:person_id])
    @request = @person.requests.find(params[:id])
    if @request.update_attributes(params[:request])
      redirect_to person_requests_path(current_person), :notice => "Your Request was updated successfully"
    else
      render 'new'
    end
  end

  def home
  end

  def destroy
    @person = Person.find(params[:person_id])
    @request = @person.requests.find(params[:id])
    if @request.destroy
      redirect_to person_requests_path(current_person), :notice => "Your Request was Deleted successfully"
    else
      redirect_to person_requests_path(current_person), :alert => "Unable to Delete! Please Try Again."
    end
  end

end

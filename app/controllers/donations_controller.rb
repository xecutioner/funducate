class DonationsController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @donation = @request.donations.new
  end

  def create
    @request = Request.find(params[:request_id])
    @donation = @request.donations.create(params[:donation])
    if @donation.save
      redirect_to homepage_path, :notice => "You Have successfully Donated, An Email has been sent to student"
    else
      render 'new', :alert => "OOPS!!! something went wrong, Try Again !!!"
    end
  end
end

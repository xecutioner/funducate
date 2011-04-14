class CommentsController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @comment = @request.comments.new
  end

  def create
    @request = Request.find(params[:request_id])
    @comment = @request.comments.create(params[:comment])
    if @comment.save
      @message = {"type" => "notice", "text" => "Your Comment was successfully Posted"}
    else
      @message = {"type" => "alert", "text" => "OOPS!!! something went wrong, Try Again !!!"}
    end
    respond_to do |format|
      format.html { redirect_to request_path(@request) }
      format.js
    end
  end

end

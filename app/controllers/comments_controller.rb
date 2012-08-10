class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def show
  	  @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  def new
  	@comment = Comment.new

  	 respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
  end
  end


  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end
end
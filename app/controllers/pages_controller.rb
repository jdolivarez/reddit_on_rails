class PagesController < ApplicationController
def index
@links = Link.paginate :page => params[:page], :per_page => 5, :order => 'updated_at DESC'
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
 end
end
end

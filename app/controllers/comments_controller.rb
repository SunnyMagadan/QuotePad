class CommentsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def create
    @excerpt = Excerpt.find params[:excerpt_id]
    if @excerpt
      @comment = @excerpt.comments.new params[:@comment]
      @comment.user_id = current_user
    else
    end
  end

  def index
    comments = Comment.scoped_by_excerpt_id(params[:excerpt_id]) if params[:excerpt_id]
    @excerpt_id = params[:excerpt_id]
    @comments_html = render_to_string(:partial => 'comments', :locals => {:comments => comments}).html_safe
    respond_to do |format|
      format.js {render :content_type => 'text/javascript'}
    end
  end
end

class CommentsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def new
    @excerpt = Excerpt.find params[:excerpt_id]
    @comment = @excerpt.comments.build

    respond_to do |format|
      format.js {render :content_type => 'text/javascript'}
    end
  end

  def create
    @excerpt = Excerpt.find params[:excerpt_id]
    @comment = @excerpt.comments.build params[:comment]
    @comment.user_id = current_user.id

    if @comment.save
      respond_to do |format|
        format.js {render :action => 'create', :content_type => 'text/javascript' and return}
      end
    end

    respond_to do |format|
      format.js {render :action => 'new', :content_type => 'text/javascript'}
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

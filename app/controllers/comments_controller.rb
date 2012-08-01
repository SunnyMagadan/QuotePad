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
end

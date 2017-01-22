class ContentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to contents_path, notice: "コメントしました！"
    else
      render 'new'
    end
  end

    private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:content)
    end
  end

class CommentsController < ApplicationController
  before_action :find_article

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = @article.id

    if @comment.save
      redirect_to article_path(@article)
    else 
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  	def comment_params
  	  params.require(:comment).permit(:comment_body)
    end

	 def find_article
  	  @article = Article.find(params[:article_id])
    end

  end
class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  impressionist :actions=>[:show, :index]

  def index
    # @articles =  Article.search(params[:search])

    if params[:search]
      @articles = Article.where(
       "lower(title) LIKE lower(?)",
       "%#{Regexp.escape(params[:search])}%"
       )
    else
      @articles = Article.all.order("created_at DESC").page(params[:page]).per(5)
    end

    # @search = Article.search do
    #   fulltext params[:search]
    # end
    # @articles = @search.results

    # @articles = Article.all
    # @markdown = Redcarpet::Markdown.new(RedCarpet::Render::HTML)
  end

  def show
    impressionist(@article)
    @comments = @article.comments.all
  end

  # def commenting
  #   impressionist(@article)
  # end

  # def search
  #   @articles = Article.all
  #   if params[:search]
  #     @articles = Article.find(:all, :conditions => ['name LIKE?', "%#{params[:search]}%"])
  #   else
  #     @articles = Article.find(:all)
  #   end    
  #   erb :"result"
  # end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body, :tag_list)
    end
end

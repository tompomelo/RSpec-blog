class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all  
  end
  
  def new
    @article = Article.new  
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article has been created"
      redirect_to articles_path
    else
      flash.now[:danger] = "Article has not been created"
      render :new
    end
  end
  
  #params id - this is when you hover over a link, and shows the id of an article
  def show
    @article = Article.find(params[:id])  
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body)  
  end
end

class ArticlesController < ApplicationController
  def index
   @articles = Article.all
 end
 def show
    @article = Article.find(params[:id])
  end
  def new
  end
  def create
  @article = Article.new(article_params)

  @article.save
  redirect_to @article
end
def upload
  uploaded_io=params[:article][:picture]
  File.open(Rails.root.join('public','uploads', uploaded_io.original_filename),'w') do |file|
    file.write(uploaded_io.read)
  end
end

private
  def article_params
    params.require(:article).permit(:title,:nameAuthor, :text, :picture )
  end

end

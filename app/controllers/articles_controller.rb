class ArticlesController < ApplicationController
	def index
		#render :text => "sdf"
		@articles = Article.all
	end
	
	def new
		@article = Article.new
	end
	
	def create
		@article = Article.new(params[:article])
		
		@article.save
		redirect_to @article
	end
	
	def show
		@article = Article.find(params[:id])
	end
	
end

class ArticalesController < ApplicationController
  before_action :find_article, only: [:show, :update, :destroy]

    def index
        @articles = Articale.all
    end

    def show
    end

    def new
        @articale = Articale.new
    end

    def create
        @article = Articale.new(article_params)
        @article.save!

        redirect_to articales_path
    end

    def edit
      @articale = Articale.find(params[:id])
    end

    def update
        @article.update!(article_params)

        redirect_to articales_path
    end

    def destroy
        @article.destroy

        redirect_to articales_path
    end

    private

    def find_article
      @article = Articale.find(params[:id])
    end

    def article_params
        params.require(:articale).permit(:title, :content)
    end
end

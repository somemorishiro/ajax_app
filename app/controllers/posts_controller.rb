class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    #データベースのPostの全てを＠postに入れる
  end

  def create
    Post.create(content:params[:content])
    #データベースのPostに（コンテンツカラム、投稿内容を）追加する
    redirect_to action: :index
  end
end

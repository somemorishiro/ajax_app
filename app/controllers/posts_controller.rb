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

  def checked
    post = Post.find(params[:id])
    if post.checked
        post.update(checked: false)
      else
        post.update(checked: true)
    end
  
  item = Post.find(params[:id])
  render json:{ post: item }
  end

end

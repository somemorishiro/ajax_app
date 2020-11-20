Rails.application.routes.draw do
  root to: 'posts#index'
  #URLpostsからindexの結果を取得する
  
  post 'posts', to: 'posts#create'
  #URLpostsへcreateの結果を送信する
  get 'posts/:id', to: 'posts#checked'
end

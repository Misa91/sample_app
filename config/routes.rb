Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/new'   #名前が一致していれば省略可能
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'   #投稿機能で入力内容を新規保存できるようにした
  get 'lists' => 'lists#index'    #一覧機能で加えた
  get 'lists/show'
  get 'lists/edit'

end

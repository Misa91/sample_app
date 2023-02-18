Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/new'   #名前が一致していれば省略可能
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'  #投稿機能で入力内容を新規保存できるようにした
  get 'lists' => 'lists#index'    #一覧機能で加えた
  get 'lists/:id' => 'lists#show', as: 'list'
  #どの投稿データを表示するかを判別するため、投稿データのidもURLに含める
  #'lists#show'の設定を、listとして利用する(名前付きルート)
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  #lists/◯◯/editのすべてのURLが対象
  patch 'lists/:id' => 'lists#update', as: 'update_list' #編集内容を保存できるようにした
end

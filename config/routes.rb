Rails.application.routes.draw do

  get 'top' => 'homes#top'
  resources :lists #ルーティングを一括でまとめてくれた
end

Rails.application.routes.draw do
  devise_for :users
  #初期設定２
  root to: "home#index"
end

Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :post_iamges, only:[:new, :index, :show]
  get '/about' => 'homes#about', as: 'about'
end

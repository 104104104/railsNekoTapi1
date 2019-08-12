Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: redirect('/nekotapi/title')
  get 'nekotapi/title'
  get 'nekotapi/ranking'
  get 'nekotapi/gamecount'
  get 'nekotapi/game'
  get 'nekotapi/submitscore/:score' => 'nekotapi#submitscore'
  post 'nekotapi/submitscore/:score' => 'nekotapi#createscore'
  resources :nekotapis
end

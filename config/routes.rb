Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blog#main"
  get 'main', to: 'blog#main', as: 'mainpage'
  get 'seed', to: 'blog#seed', as: 'seedpage'
end

Rails.application.routes.draw do
  root to: 'bikes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bikes do
    resources :customizations
  end
end



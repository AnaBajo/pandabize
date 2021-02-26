Rails.application.routes.draw do
  root to: 'bikes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bikes do
    member do
      get :admin_show
    end
    resources :customizations do
      member do
        get :add_selections
        post :save_selection
        post :delete_selection
      end
    end
  end
end



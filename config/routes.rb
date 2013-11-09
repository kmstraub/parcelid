Parcelid::Application.routes.draw do
  get "welcome/index"
  root "welcome#index"
  

    resources :stories do
    resources :comments

end

  resources :categories


end

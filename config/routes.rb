Parcelid::Application.routes.draw do
  get "welcome/index"
  root "welcome#index"
  
resources :properties do
	resources :stories do
		resources :comments
end
end

end





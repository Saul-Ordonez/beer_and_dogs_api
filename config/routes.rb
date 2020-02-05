Rails.application.routes.draw do
  resources :establishments do
    resources :reviews
  end
end

Rails.application.routes.draw do

root 'company#index'
resources :company do
  resources :events
  end
end

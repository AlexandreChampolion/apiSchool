Rails.application.routes.draw do
  apipie
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      devise_for :users
      resources :schools
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

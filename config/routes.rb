Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      
      resources :markets do
        resources :items
      end
    end
  end

end

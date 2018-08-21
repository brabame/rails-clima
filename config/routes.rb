Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #post 'user_token' => 'user_token#create'
  namespace :api do
    post 'auth' => 'user_token#create'
    namespace :v1 do      
      resources :location do
        resources :report
      end
    end
  end

end

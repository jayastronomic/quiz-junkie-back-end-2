Rails.application.routes.draw do
  namespace 'api' do 
    namespace 'v1' do
      resources :questions, only: [:index] 
      resources :users, only: [:index, :create, :destroy]
      resources :scores, only: [:show, :create, :update]
    end
  end
end

Rails.application.routes.draw do
  namespace 'api' do 
    namespace 'v1' do
      resources :users, only: [:index, :create, :destroy]
      resources :scores, only: [:index, :show, :create, :update]
    end
  end
end

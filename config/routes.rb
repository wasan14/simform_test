Rails.application.routes.draw do
  resources :members do
    collection do
      get :top_average_scorers
    end
  end
  get 'successfull_action', to: 'members#successfull'
end

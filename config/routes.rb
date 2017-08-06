Rails.application.routes.draw do
  #get 'machine/index'
  root 'rolls#index'
  # usamos uns solcitud de get, ya post daba un error:  ActionController::InvalidAuthenticityToken
  get '/rolls' => 'rolls#roll_dice'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :registered_users, path: 'registered-users' # TODO find out how kebabize all resources at once, few options there nothing really good
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "projects/:id/add_funding", to: "projects#add_funding"

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
  get "profile" => "users#profile"

  # Topics
  resources :topics
end
=begin
#rake routes
#     topics POST   /topics(.:format)            topics#create
#  new_topic GET    /topics/new(.:format)        topics#new
#      topic GET    /topics/:id(.:format)        topics#show
# edit_topic GET    /topics/:id/edit(.:format)   topics#edit
#            PATCH  /topics/:id(.:format)        topics#update
#            DELETE /topics/:id(.:format)        topics#destroy
=end

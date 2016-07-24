Rails.application.routes.draw do
  get '/', to: redirect('/messages')
  resources :messages, only: [:index, :create]
end

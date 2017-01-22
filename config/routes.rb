Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  root 'top#index'
  resources :contents
  resources :contacts
  resources :comments
  resources :awards
end

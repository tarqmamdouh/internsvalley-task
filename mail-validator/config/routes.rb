Rails.application.routes.draw do
  root 'home#index'
  post '/' => 'home#check_email', as: :validate_email
end

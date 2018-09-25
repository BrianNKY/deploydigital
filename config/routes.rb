Rails.application.routes.draw do
  resources :categorie_competences
  resources :competences
  resources :services
  resources :cgus
  resources :mentionslegales
  resources :faqs
  resources :contacts
  resources :freelances
  resources :portfolios
  resources :resumes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end

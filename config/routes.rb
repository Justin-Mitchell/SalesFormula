Rails.application.routes.draw do
  devise_for :customers
  root 'pages#index'
  
  get '/about-us' => 'pages#about'
  get '/contact-us' => 'pages#contact'
  get '/testimonials' => 'pages#testimonials'
  
  get '/websites/for-real-estate-agents/:page' => 'agents#show', :as => 'agent_page'
end

Rails.application.routes.draw do
  devise_for :customers
  
  root 'pages#index'

  get '/about-us'     => 'pages#about'
  get '/contact-us'   => 'pages#contact'
  get '/testimonials' => 'pages#testimonials'
  get '/blogs'        => 'blogs#index',       :as => :blogs
  get '/blogs/:id'    => 'blogs#show',        :as => :post
  
  get '/websites/for-real-estate-agents/:page' => 'agents#show', :as => 'agent_page'

end

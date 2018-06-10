Rails.application.routes.draw do
  resources :elements
  resources :atoms
  resources :molecules
  resources :molucules
  resources :protains
  resources :parts
  resources :members
  resources :departments
  resources :companies
  resources :countries
  resources :planets
  resources :stars
  resources :universes do
    resources :superclusters do
      resources :galaxies
    end
  end
end

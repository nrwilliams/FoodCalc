Rails.application.routes.draw do
  get 'categories/new'
  get 'categories/create'
  get 'categories/index'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/show'
  get 'foods/new'
  get 'foods/create'
  get 'foods/index'
  get 'foods/show'
  get 'foods/update'
  get 'foods/destroy'
  get 'foods/edit'
  get 'foods/calculator'


  resources :foods
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

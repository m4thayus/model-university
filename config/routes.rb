Rails.application.routes.draw do
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/edit'
  get 'professors/index'
  get 'professors/show'
  get 'professors/new'
  get 'professors/edit'
  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

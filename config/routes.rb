Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end

# VISIT
# - restaurants#index
# - restuarants#show

# - restaurants#new
# - restaurants#create

#only admin get to update and destory


# - add a new review
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"

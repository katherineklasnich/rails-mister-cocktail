Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only:[:new, :show, :create, :index] do
    resources :doses, only:[:new, :create]
  end

  resources :doses, only:[:destroy]


  # # A user can see the list of cocktails
  # GET "cocktails", to: "cocktails#index"

  # # A user can see the details of a given cocktail, with the dose needed for each ingredient
  # GET "cocktails/:id", to: "cocktails/show"

  # # A user can create a new cocktail
  # GET "cocktails/new", to: "cocktails#new"
  # POST "cocktails", to: "cocktails#create"

  # # A user can add a new dose (ingredient/description pair) to an existing cocktail
  # GET "cocktails/:id/doses/new", to: "doses#new"
  # POST "cocktails/:id/doses", to: "doses#create"

  # # A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
  # DELETE "doses/:id", to: "cocktails#destroy"

end

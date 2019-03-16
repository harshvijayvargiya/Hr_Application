Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:           'users/sessions', 
    confirmations:       'users/confirmations',
    passwords:          'users/passwords',
    registrations:      'users/registrations',
    unlocks:            'users/unlocks'                  
  }

  namespace :admin do
    get 'dashboard' => "sites#dashboard"
    resources :employees do
      collection do 
      get :employee_by_status
      end
    end
    resources :relatives
    resources :previous_work_details
    get '/showindex' => 'employees#showindex'
  end
  root to: 'users#sign_in'
  # root "sites#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

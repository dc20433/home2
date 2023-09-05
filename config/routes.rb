Rails.application.routes.draw do
    
  resources :regis do
    resources :charts
    resources :patients
    resources :filings
  end
  
  devise_for :users
  resources :users
  
  get 'overviews/patient_info'
  get 'overviews/chart_name'
  get 'overviews/chart_date'
  get 'consent' => 'sites#consent'
  get 'no_consent' => 'sites#no_consent'
  
  root 'sites#home'
end

Rails.application.routes.draw do
    
  resources :regis do
    resources :charts
    resources :patients
    resources :filings
  end
  
  devise_for :users
  resources :users
  
  get 'overviews/patient_list'
  get 'overviews/patient_info'
  get 'overviews/chart_name'
  get 'overviews/chart_date'
  get 'consent' => 'sites#consent'
  get 'info_edit' => 'sites#info_edit'
  
  root 'sites#home'
end

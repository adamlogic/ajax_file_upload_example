ActionController::Routing::Routes.draw do |map|
  map.resources :toasts
  map.root :controller => 'toasts', :action => 'new'
end

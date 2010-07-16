ActionController::Routing::Routes.draw do |map|
  map.root :action => "overview", :controller => "gadgets"
  map.resources :gadgets,
    :member => {:detail => :get},
    :collection => {:overview => :get}
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

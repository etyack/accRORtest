ActionController::Routing::Routes.draw do |map|
  map.root :action => "overview", :controller => "gadgets"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

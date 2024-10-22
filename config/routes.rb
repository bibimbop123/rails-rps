Rails.application.routes.draw do
  root "rpsgame#home"
  get("/", { :controller => "rpsgame", :action => "home"})
  get("/rock", { :controller => "rpsgame", :action => "rock"})
  get("/paper", { :controller => "rpsgame", :action => "paper"})
  get("/scissors", { :controller => "rpsgame", :action => "scissors"})
end

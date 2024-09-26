Rails.application.routes.draw do
  get("/square/new", { :controller => "omni", :action => "nsquare" })
  get("/square/results", { :controller => "omni", :action => "rsquare" })

  get("/square_root/new", { :controller => "omni", :action => "nsquare_root" })
  get("/square_root/results", { :controller => "omni", :action => "rsquare_root" })

  get("/payment/new", { :controller => "omni", :action => "npayment" })
  get("/payment/results", { :controller => "omni", :action => "rpayment" })


  get("/random/new", { :controller => "omni", :action => "nrandom" })
  get("/random/results", { :controller => "omni", :action => "rrandom" })  

  get("/", { :controller => "omni", :action => "nsquare" })
  
end

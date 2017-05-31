Rails.application.routes.draw do
  root to: 'pictures#index'
  # CREATE
  get("/photos/new", { :controller => "pictures", :action => "new_form" })
  post("/create_photo", { :controller => "pictures", :action => "create_row" })

  # READ
  get("/photos", { :controller => "pictures", :action => "index" })
  get("/photos/:id", { :controller => "pictures", :action => "show" })

  # UPDATE
  get("/photos/:id/edit", { :controller => "pictures", :action => "edit_form" })
  put("/update_photo/:id", { :controller => "pictures", :action => "update_row" })

  # DELETE
  delete("/delete_photo/:id", { :controller => "pictures", :action => "destroy_row" })
end

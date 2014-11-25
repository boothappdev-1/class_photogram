Rails.application.routes.draw do
  # Routes for the Following resource:
  # CREATE
  get('/followings/new', { :controller => 'followings', :action => 'new' })
  get('/create_following', { :controller => 'followings', :action => 'create' })

  # READ
  get('/followings', { :controller => 'followings', :action => 'index' })
  get('/followings/:id', { :controller => 'followings', :action => 'show' })

  # UPDATE
  get('/followings/:id/edit', { :controller => 'followings', :action => 'edit' })
  get('/update_following/:id', { :controller => 'followings', :action => 'update' })

  # DELETE
  get('/delete_following/:id', { :controller => 'followings', :action => 'destroy' })

  # Routes for the Comment resource:
  # CREATE
  get('/comments/new', { :controller => 'comments', :action => 'new' })
  get('/create_comment', { :controller => 'comments', :action => 'create' })

  # READ
  get('/comments', { :controller => 'comments', :action => 'index' })
  get('/comments/:id', { :controller => 'comments', :action => 'show' })

  # UPDATE
  get('/comments/:id/edit', { :controller => 'comments', :action => 'edit' })
  get('/update_comment/:id', { :controller => 'comments', :action => 'update' })

  # DELETE
  get('/delete_comment/:id', { :controller => 'comments', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get('/photos/new', { :controller => 'photos', :action => 'new' })
  get('/create_photo', { :controller => 'photos', :action => 'create' })

  # READ
  get('/photos', { :controller => 'photos', :action => 'index' })
  get('/photos/:id', { :controller => 'photos', :action => 'show' })

  # UPDATE
  get('/photos/:id/edit', { :controller => 'photos', :action => 'edit' })
  get('/update_photo/:id', { :controller => 'photos', :action => 'update' })

  # DELETE
  get('/delete_photo/:id', { :controller => 'photos', :action => 'destroy' })
  #------------------------------
end

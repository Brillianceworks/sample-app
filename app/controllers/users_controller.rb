class UsersController < ApplicationController



  def register_me
    @user = User.new
  end

  def submit_registration
     #render :text => params.inspect and return
    @user = User.new(params["user"])
    40.times{print "-"}
    puts 
    puts @user.inspect
    40.times{print "-"}
    @user.save
  end
  
 #render '/login_form' -- > app/views
 #render 'extras/login_form' -->  app/views/extras
  
  #login.html.erb
  def login
    render 'extras/login_form'
  end
  
  def login_check    
    render :text => params.inspect and return  
    if params["username"] == $username && params["password"] == $password
      render :text => "you have successfully logged in"
    else
      render :text => "you have not logged in"  
    end    
  end  
  
    
end



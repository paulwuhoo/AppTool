class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:uid] = user.id
        redirect_to apps_url, notice: "Hello, #{user.name}"
      else
        flash[:notice] = "Unknown email address or password"
        render :new
      end
    else
      flash[:notice] = "Unknown email address or password"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url notice: "Goodbye!"
  end
end

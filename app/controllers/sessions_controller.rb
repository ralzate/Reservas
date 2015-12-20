class SessionsController < ApplicationController

  def new
  end
  
  def create
    usuario = login(params[:email], params[:password], params[:remember_me])
    if usuario
      redirect_back_or_to root_path, :notice => "Iniciaste Sesión!"
    else
      flash.now.alert = "El email y la contraseña no coinciden"
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Cerraste Sesión!"
  end
end

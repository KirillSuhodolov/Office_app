class UsersController < ApplicationController

  load_and_authorize_resource

  def index
    @users = User.order("name").page(params[:page]).per_page(10)
  end

	def create
    @user = User.new(params[:user])

    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
  end

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end

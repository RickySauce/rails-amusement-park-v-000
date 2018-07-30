class UsersController < ApplicationController
<<<<<<< HEAD
  before_action
=======
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58

  def index
  end

  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD
    @user = User.create(user_params)
    @user.admin = params[:user][:admin]
=======
    @user = User.new(user_params)
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    redirect_to '/' if !logged_in?
  end

  def signin
    @user = User.find_by(name: params["user_name"])
    if @user
      session[:user_id] = @user.id if  @user.authenticate(params["password"])
      if session[:user_id]
        redirect_to user_path(@user)
      else
        redirect_to signin_path
      end
    end
=======
  end

  def signin
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58
  end

  private

  def user_params
<<<<<<< HEAD
    params.require(:user).permit(:name, :password, :password_confirmation, :height, :nausea, :tickets, :happiness, :admin)
=======
    params.require(:user).permit(:name, :password, :password_confirmation, :height, :nausea, :tickets, :happiness)
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58
  end

end

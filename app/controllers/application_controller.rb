class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
  end

<<<<<<< HEAD
  private

def logged_in?
  !!session[:user_id]
end

=======
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58
end

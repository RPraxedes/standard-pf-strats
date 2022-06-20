class LoginController < ApplicationController
  def login_form

	end

	def check_login
		user = User.find_by(:email => params[:email])

		if user && user.authenticate(params[:password])
			# Valid login, set the session and redirect to protected destination
			session[:current_user_id] = user.id

			redirect_to '/'
		else
			# Not a match, redirect to the login page
			redirect_to '/login?err=1'
		end
	end

  protected

  def protected_view
     current_user = User.find(session[:current_user_id])

     # If there's no user, then redirect them to the log in page
     # Note: In a real application you wouldn't want to duplicate this code on each call, use a filter
     if !current_user
     	redirect_to '/login'
     end
  end
end

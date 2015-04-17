class ApisController < ActionController::Base

	def authenticate
    user.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      user.id
    else
      nil
    end
 	end

 	def show
      CoursesPoint.where(id: params[:id])
 	end
  
end


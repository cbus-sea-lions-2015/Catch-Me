class ApisController < ActionController::Base

	def authenticate
    user.find_by(id: params[:id])
    if user && user.authenticate(params[:password])
      user.id
    else
      nil
    end
 	end
  
end


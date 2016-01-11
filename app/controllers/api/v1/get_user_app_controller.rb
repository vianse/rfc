class Api::V1::GetUserAppController <ApplicationController
	def index
		@user = UserApp.where(:uuid_phone => params[:uuid]).pluck(:uuid_phone)
		render json: @user
	end
end
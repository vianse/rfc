class Api::V1::GetProfileListController <ApplicationController
	def index
		@profile = ProfileList.where(:uuid_phone => params[:uuid])
		render json: {list: @profile}
	end
end
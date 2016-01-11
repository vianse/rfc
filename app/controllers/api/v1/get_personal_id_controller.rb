class Api::V1::GetPersonalIdController <ApplicationController
	def index
		@profile = ProfileList.where(:id => params[:id])
		render json: {list: @profile}
	end
end
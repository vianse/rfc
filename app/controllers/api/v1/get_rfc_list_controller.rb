class Api::V1::GetRfcListController <ApplicationController
	def index
		@profile = Listrfc.where(:uuid_phone => params[:uuid])
		render json: {rfc: @profile}
	end
end
class Api::V1::GetRfcIdController <ApplicationController
	def index
		@profile = Listrfc.where(:id => params[:id])
		render json: {rfc: @profile}
	end
end
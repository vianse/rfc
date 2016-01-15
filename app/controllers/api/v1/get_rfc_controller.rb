class Api::V1::GetRfcController <ApplicationController
	def index
		@profile = Myrfc.where(:comercio_id => params[:comercio])
		render json: {rfc: @profile}
	end
end
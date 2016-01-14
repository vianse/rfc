class Api::V1::GetComercioController <ApplicationController
	def index
		@profile = Myrfc.where(:comercio_id => params[:comercio])
		render json: {list: @profile}
	end
end
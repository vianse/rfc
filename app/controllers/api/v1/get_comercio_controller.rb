class Api::V1::GetComercioController <ApplicationController
	def index
		@profile = Empresa.where(:comercio_id => params[:comercio]).pluck(:name)
		render json: {empresa: @profile}
	end
end
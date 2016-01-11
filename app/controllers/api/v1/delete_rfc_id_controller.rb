class Api::V1::DeleteRfcIdController <ApplicationController
	def index
		@profile = Listrfc.where(:id => params[:id]).destroy_all
		render json: {
           message: "Datos eliminados correctamente."
         }
	end
end
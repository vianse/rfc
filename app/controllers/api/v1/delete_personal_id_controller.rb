class Api::V1::DeletePersonalIdController <ApplicationController
	def index
		@profile = ProfileList.where(:id => params[:id]).destroy_all
		render json: {
           message: "Datos eliminados correctamente."
         }
	end
end
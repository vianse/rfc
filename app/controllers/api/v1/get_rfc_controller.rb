class Api::V1::GetRfcController <ApplicationController
	
	def index
		@profile = Myrfc.where(:comercio_id => params[:comercio])
		respond_to do |f|
		    f.json { render json: {rfc: @profile}.to_json }
		    f.xml  { render xml: {rfc: @profile}.to_xml }
		 end
		#render xml: {rfc: @profile}
		#render json: {rfc: @profile}
	end
end
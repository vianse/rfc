class Api::V1::CompartirRfcController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	
  
 end
 def create
 @empresa = Empresa.where(:comercio_id => params[:comercio]).pluck(:id).first
 if @empresa.blank?
 	render json: {
           message: "El comercio no existe, favor de intentar nuevamente."
         }
 else
 	@crear_rfc = Myrfc.create(rfc_params)
 	render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
 end

 
 end
 private
def rfc_params
   params.require(:myrfc).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:name, :rfc, :address, :phone, :email, :cp, :comercio_id, :referencia)
   end
  end
end
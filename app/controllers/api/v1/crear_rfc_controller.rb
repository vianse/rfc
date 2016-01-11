class Api::V1::CrearRfcController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	
  
 end
 def create
 
 @crear_rfc = Listrfc.create(rfc_params)
 render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
 end
 private
def rfc_params
   params.require(:rfc).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:name, :rfc, :address, :phone, :email, :cp, :uuid_phone)
   end
  end
end
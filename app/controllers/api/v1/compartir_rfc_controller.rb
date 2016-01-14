class Api::V1::CompartirRfcController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	
  
 end
 def create
 
 @crear_rfc = Myrfc.create(rfc_params)
 render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
 end
 private
def rfc_params
   params.require(:myrfc).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:name, :rfc, :address, :phone, :email, :cp, :comercio_id, :referencia)
   end
  end
end
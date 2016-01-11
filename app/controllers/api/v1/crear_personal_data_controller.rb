class Api::V1::CrearPersonalDataController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	
  
 end
 def create
 
 @crear_personal = ProfileList.create(personal_params)
 render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
 end
 private
def personal_params
   params.require(:personaldata).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:full_name, :phone, :email, :birthday, :address, :city, :state, :country, :cp,:uuid_phone)
   end
  end
end
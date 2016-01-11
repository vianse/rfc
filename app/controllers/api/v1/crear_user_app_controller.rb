class Api::V1::CrearUserAppController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	
  
 end
 def create
 
 @crear_user = UserApp.create(user_params)
 render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
 end
 private
def user_params
   params.require(:user).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:uuid_phone)
   end
  end
end
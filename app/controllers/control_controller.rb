class ControlController < ApplicationController
  def index
  	if usuario_signed_in? 
  	@empresa = Empresa.where(:user_id => current_usuario.id).pluck(:id)
  	if @empresa.blank?
  		redirect_to '/empresas'
  	else
  		redirect_to '/home'
  	end
  else
  end
  end
end

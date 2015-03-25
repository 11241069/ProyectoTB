class WelcomeController < ApplicationController
	skip_before_filter :verify_authenticity_token
  def homepage
  end

  def seguimiento
  	@selectedCita = Citum.find_by(:id => params[:idCita])
  	@selectedAuto = Auto.find_by(:id => @selectedCita.auto_id)
  	@selectedAsesor = Asesor.find_by(:id => @selectedCita.asesor_id)
  end

  def newCita
  	@selectedCliente = Cliente.find_by(:id => params[:idCliente])
  	@autosCliente = @selectedCliente.Auto
  	@allAsesores = Asesor.all
  end

 def nuevaCita
 	@nuevaCita = Citum.new(:auto_id => Auto.find_by(:Placa => params[:Placa]).id , :Placa => params[:Placa],:NombreCliente => params[:nombreCliente],:Estado => "NO_INGRESADO",:TelefonoContacto => params[:telefonoContacto],:FechaHoraEntrada => Time.new.inspect)
 	

 	/if @nuevaCita.save?
 		render plain: "Cita creada exitosamente con el Id de Cita : " + @nuevaCita.id
 	else
 		render plain: "Error al guardar la cita"
 	end
 	/
 end


  def checkCita
	if Citum.where(:id => params[:idCita]).blank?
		 render plain: "false"		 
	else
		 render plain: "true"
	end
  end

  def checkCliente
  	if Cliente.where(:id => params[:idCliente]).blank?
		 render plain: "false"		 
	else
		 render plain: "true"
	end
  end

end

class Mymailer< ActionMailer::Base
  default :from => 'carlos.morazan@unitec.edu'

	def send_email(cliente)
	    @Cliente = cliente
    	mail to: @Cliente.Email, subject: 'Cita'
  	end

end

class RsvpController < ApplicationController

  #POST /rsvp
  def create
    @rsvp_params = rsvp_params
    code = @rsvp_params[:access_code]
    @rsvp_params.delete(:access_code)
    
    if @rsvp_params[:name] == '' || @rsvp_params[:email] == ''
          return render json: {
            :status => 'error',
            :message => "Name and Email are required"
          }
    end
    
    
    if code == 'VOSEWEDDING16'
      rsvp = Rsvp.new(rsvp_params)
      if rsvp.save
        #WeddingMailer.rsvp_confirmation(rsvp).deliver
      end
    else
     return render :json => {status: 'error', message: 'Access Code is incorrect. Your access code is located on your invitation.'}
    end
    
    render :json => {status: "success", message: 'Your RSVP has been saved!'}
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:name, :email, :adults, :children, :message, :access_code)
  end
end
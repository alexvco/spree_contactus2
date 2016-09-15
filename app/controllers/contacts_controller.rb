class ContactsController < ApplicationController


  # GET /contacts/new
  def new
    @contact = Contact.new
  end


  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to root_path, notice: 'Message was successfully sent. We will get back to you as soon as possible' 
      else
        render :new 
      end
  end



  def contact_saved
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:firstname, :lastname, :email, :phone, :message)
    end
end

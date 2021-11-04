class ContactController < ApplicationController
    def create
      unless params[:contact].nil?
        @contact = Lead.new(contact_params)
        @contact.date = DateTime.now
        


        if @contact.save
          flash[:notice] = 'Message sent successfully'
          redirect_to root_url action: :new
        else
            render :new 
        end
      end
    end

     private
     def contact_params
       params.require(:contact).permit(:fullNameContact, :email, :phoneNumber, :compagnyName, :nameProject, :descriptionProject, :department, :message, :file) 
     end
end